<?php

namespace App\Http\Controllers;

use App\Models\BotSetting;
use Illuminate\Http\Request;
use function PHPSTORM_META\type;
use App\Models\Project;

class BotController extends Controller
{

    public function startBot()
    {
        $botSetting = BotSetting::findOrFail(1);
        $countries = explode(',', $botSetting->allow_country);
        $findUrl = 'https://www.freelancer.com/api/projects/0.1/projects/active/?compact=true&job_details=true&user_details=true&user_status=true&user_reputation=true&user_reputation_extra=true&user_employer_reputation=true&user_employer_reputation_extra=true' . $this->generateUriProp($botSetting->allow_skill, 'jobs') . $this->generateUriProp($botSetting->allow_country, 'countries'). '&limit=' . $botSetting->page_limit . '&min_price=' . $botSetting->min_price . '&project_types[]=fixed';
        $curl = curl_init();
        if($botSetting->status == 1){
            curl_setopt_array(
                $curl,
                array(
                    CURLOPT_URL => $findUrl,
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => '',
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => 'GET',
                    CURLOPT_HTTPHEADER => array(
                        'freelancer-oauth-v1: ' . $botSetting->fluser_token
                    ),
                )
            );
    
            $response = curl_exec($curl);
            curl_close($curl);
            $data = json_decode($response);
            // Extract relevant information
            $projects = $data->result->projects;
            $users = $data->result->users;
            // Iterate through projects and check user reviews
            foreach ($projects as $project) {
                $ownerId = $project->owner_id;
                // Check if title contains skipping words
                if($this->shouldNotSkipProject($project->title, $botSetting->skip_project) && $this->shouldNotSkipProject($project->description, $botSetting->skip_project)){
                    // Check if user exists and has more than 1 review
                    if (isset($users->$ownerId) && $users->$ownerId->employer_reputation->entire_history->overall >= $botSetting->buyer_reputation) {
                        if (in_array(strtolower($project->currency->country), $countries)) {
                            if ($project->budget->minimum >= $botSetting->min_price) {
                                $saveProject = Project::where('projectid', $project->id)->first();
                                if (!$saveProject) {
                                    $bidPrice = ceil(($project->budget->maximum + $project->budget->minimum) / 2);
                                    // save project
                                    $newProject = Project::create([
                                        'projectid' => (string) $project->id, // Cast to string
                                        'userid' => (string) $project->owner_id, // Cast to string
                                        'seo_url' => (string) $project->seo_url, // Cast to string
                                        'name' => (string) $project->title, // Cast to string
                                        'employer_reputation' => (string) $users->$ownerId->employer_reputation->entire_history->overall, // Cast to string
                                        'country' => (string) $project->currency->country, // Cast to string
                                        'currency' => (string) $project->currency->code, // Cast to string
                                        'min_price' => (string) $project->budget->minimum, // Cast to string
                                        'avg_price' => (string) $project->bid_stats->bid_avg ? $project->bid_stats->bid_avg : 0, // Cast to string
                                        'bid_count' => (string) $project->bid_stats->bid_count ? $project->bid_stats->bid_count : 0, // Cast to string
                                        'bid_price' => (string) $bidPrice, // Cast to string
                                        'pub_time' => (string) $project->time_updated, // Cast to string
                                    ]);

                                    // Define the URL and the access token
                                    $url = 'https://www.freelancer.com/api/projects/0.1/bids/?compact=';
    
                                    // Define the required fields
                                    $payload = [
                                        'project_id' => $project->id,
                                        'bidder_id' =>(int) $botSetting->fluser_id,
                                        'amount' => (float) $bidPrice,
                                        'period' => (int) $botSetting->bid_period,
                                        'milestone_percentage' => 100,
                                        'description' => $botSetting->bid_proposal,
                                    ];
                                    // Convert the data array to JSON
                                    $dataJson = json_encode($payload);
    
                                    // Initialize cURL session
                                    $ch = curl_init($url);
    
                                    // Set cURL options
                                    curl_setopt($ch, CURLOPT_HTTPHEADER, [
                                        'Content-Type: application/json',
                                        'freelancer-oauth-v1: ' . $botSetting->fluser_token
                                    ]);
                                    curl_setopt($ch, CURLOPT_POST, true);
                                    curl_setopt($ch, CURLOPT_POSTFIELDS, $dataJson);
                                    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    
                                    // Execute cURL request
                                    $bidresponse = curl_exec($ch);
                                    // Close cURL session
                                    curl_close($ch);
                                    $responseData = json_decode($bidresponse);
                                    // Check for errors
                                    if ($responseData->status === 'success') {
                                        $newProject->update([
                                            'request_id' => $responseData->request_id,
                                            'status' => true,
                                        ]);
                                        dump("Bid placed!");
                                        // sleep(3);
                                    } else {
                                        dump($responseData->message);
                                    }
                                }
                            }else {
                                dump((string) $project->budget->maximum . ' - oop! Project budget is lower!');
                            }
        
                        }else {
                                dump((string) $project->currency->country . ' - oop! Country does not matched!');
                            }
                    }else {
                        dump((string) $users->$ownerId->employer_reputation->entire_history->overall . ' - oop! Reputation did not matched');
                    }

                }else {
                    dump('Not our chew!');
                }
            }
            dd('Successfull');
        }
        dd('Bot is sleeping');

    }

    public function getSetting()
    {
        return view('bot.settings', [
            'setting' => BotSetting::findOrFail(1),
        ]);
    }


    public function editSetting()
    {
        return view('bot.edit', [
            'setting' => BotSetting::findOrFail(1),
        ]);
    }

    public function updateSetting(Request $request)
    {
        $setting = BotSetting::findOrFail(1);
        $setting->update($request->all());

        return redirect()->route('bot.settings')->with('success', 'Settings updated successfully.');
    }

    // Function to check if any word in checkWords is in the title
    function shouldNotSkipProject($title, $checker)
    {
        $checkWords = explode(',', $checker);
        foreach ($checkWords as $word) {
            if (stripos($title, $word) !== false) {
                return false; // Skip the project if any checker word is found in the title
            }
        }
        return true; // Do not skip the project if no checker word is found in the title
    }
    function generateUriProp($data, $name)
    {
        $dumCountries = explode(',',$data);
        $data = '';
        foreach ($dumCountries as $key => $value) {
            $data = trim($data) . '&' . trim($name) . '[]=' . trim($value);
            $data = trim($data);
        }
        return trim($data);
    }
}
