<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use function PHPSTORM_META\type;
use App\Models\Project;

class BotController extends Controller
{
    public function index()
    {
        $countries = array("as", "tz", "zm", "ba", "gy", "ly", "um", "uy", "sy", "ye", "mx", "no", "rw", "tw", "zw", "vg", "ve", "vi", "vn", "it", "mz", "iq", "md", "pw", "np", "pa", "pg", "pr", "sg", "py", "my", "mv", "mk", "do", "is", "sv", "lk", "kg", "tr", "kw", "xk", "tj", "uz", "ke", "jo", "jm", "kz", "ht", "hn", "xc", "ph", "hu", "hk", "lu", "gl", "gd", "gi", "gh", "gm", "ge", "fk", "fj", "fi", "gf", "tf", "pf", "ir", "za", "et", "ee", "ag", "cu", "cz", "ec", "cr", "co", "cl", "cv", "cm", "ca", "kh", "bi", "bo", "bs", "bg", "az", "am", "ai", "at", "bh", "ao", "dz", "al", "cy", "by", "si", "sk", "ar", "br", "pe", "lt", "lv", "es", "pt", "hr", "nl", "be", "eg", "qa", "ae", "sa", "pl", "dk", "ie", "fr", "ro", "ch", "se", "gb", "de", "au", "nz", "us", "gr");

        $flUserId = 51803546;
        $flToken = 'hkVl6gS9Kjqvo1WMiPs423VJm5jx0K';

        $bidPeriod = 10;

        $description = "Hello!

        I'm Mehrab, a Google-certified UX Specialist and IT Specialist, Meta certified Frontend Designer and Developer and currently working Senior Web Designer and Developer at SW HR Consulting LLC, with extensive experience in web, software, mobile application design and development and digital marketing. I am committed to crafting your digital success and ensuring you are 100% satisfied with the results. Pay only when you are 100% satisfied. I STRICTLY BITE ONLY WHICH I CAN CHEW!";

        $curl = curl_init();

        curl_setopt_array(
            $curl,
            array(
                CURLOPT_URL => 'https://www.freelancer.com/api/projects/0.1/projects/active/?compact=true&job_details=true&user_details=true&user_status=true&user_reputation=true&user_reputation_extra=true&user_employer_reputation=true&user_employer_reputation_extra=true&jobs[]=2158&jobs[]=613&jobs[]=323&jobs[]=237&jobs[]=959&jobs[]=710&jobs[]=95&jobs[]=7&jobs[]=669&jobs[]=106&jobs[]=72&jobs[]=44&jobs[]=59&jobs[]=20&jobs[]=74&jobs[]=116&jobs[]=77&jobs[]=305&jobs[]=13&jobs[]=3&jobs[]=9&jobs[]=17&jobs[]=69&jobs[]=115&jobs[]=335&countries[]=as&countries[]=tz&countries[]=zm&countries[]=ba&countries[]=gy&countries[]=ly&countries[]=um&countries[]=uy&countries[]=sy&countries[]=ye&countries[]=mx&countries[]=no&countries[]=rw&countries[]=tw&countries[]=zw&countries[]=vg&countries[]=ve&countries[]=vi&countries[]=vn&countries[]=it&countries[]=mz&countries[]=iq&countries[]=md&countries[]=pw&countries[]=np&countries[]=pa&countries[]=pg&countries[]=pr&countries[]=sg&countries[]=py&countries[]=my&countries[]=mv&countries[]=mk&countries[]=do&countries[]=is&countries[]=sv&countries[]=lk&countries[]=kg&countries[]=tr&countries[]=kw&countries[]=xk&countries[]=tj&countries[]=uz&countries[]=ke&countries[]=jo&countries[]=jm&countries[]=kz&countries[]=ht&countries[]=hn&countries[]=xc&countries[]=ph&countries[]=hu&countries[]=hk&countries[]=lu&countries[]=gl&countries[]=gd&countries[]=gi&countries[]=gh&countries[]=gm&countries[]=ge&countries[]=fk&countries[]=fj&countries[]=fi&countries[]=gf&countries[]=tf&countries[]=pf&countries[]=ir&countries[]=za&countries[]=et&countries[]=ee&countries[]=ag&countries[]=cu&countries[]=cz&countries[]=ec&countries[]=cr&countries[]=co&countries[]=cl&countries[]=cv&countries[]=cm&countries[]=ca&countries[]=kh&countries[]=bi&countries[]=bo&countries[]=bs&countries[]=bg&countries[]=az&countries[]=am&countries[]=ai&countries[]=at&countries[]=bh&countries[]=ao&countries[]=dz&countries[]=al&countries[]=cy&countries[]=by&countries[]=si&countries[]=sk&countries[]=ar&countries[]=br&countries[]=pe&countries[]=lt&countries[]=lv&countries[]=es&countries[]=pt&countries[]=hr&countries[]=nl&countries[]=be&countries[]=eg&countries[]=qa&countries[]=ae&countries[]=sa&countries[]=pl&countries[]=dk&countries[]=ie&countries[]=fr&countries[]=ro&countries[]=ch&countries[]=se&countries[]=gb&countries[]=de&countries[]=au&countries[]=nz&countries[]=us&countries[]=gr&limit=10&min_price=250.00&project_types[]=fixed',
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => 'GET',
                CURLOPT_HTTPHEADER => array(
                    'freelancer-oauth-v1: ' . $flToken
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

            // Check if user exists and has more than 1 review
            if (isset($users->$ownerId) && $users->$ownerId->employer_reputation->entire_history->overall >= 4.5) {
                if (in_array(strtolower($project->currency->country), $countries)) {
                    if ($project->budget->minimum > 249.0) {
                        // dump($users->$ownerId->status);
                        $saveProject = Project::where('projectid', $project->id)->first();
                        if (!$saveProject) {
                            dump("No project found");
                            $bidPrice = ceil(($project->budget->maximum + $project->budget->minimum) / 2);

                            // save project
                            $newProject = Project::create([
                                'projectid' => $project->id,
                                'userid' => $project->owner_id,
                                'seo_url' => $project->seo_url,
                                'name' => $project->title,
                                'employer_reputation' => $users->$ownerId->employer_reputation->entire_history->overall,
                                'country' => $project->currency->country,
                                'currency' => $project->currency->code,
                                'min_price' => $project->budget->minimum,
                                'avg_price' => $project->bid_stats->bid_avg,
                                'bid_count' => $project->bid_stats->bid_count,
                                'bid_price' => $bidPrice,
                                'pub_time' => $project->time_updated,
                            ]);

                            // Define the URL and the access token
                            $url = 'https://www.freelancer.com/api/projects/0.1/bids/?compact=';

                            // Define the required fields
                            $payload = [
                                'project_id' => $project->id,
                                'bidder_id' => $flUserId,
                                'amount' => $bidPrice,
                                'period' => $bidPeriod,
                                'milestone_percentage' => 100,
                                'description' => $description,
                            ];

                            // Convert the data array to JSON
                            $dataJson = json_encode($payload);

                            // Initialize cURL session
                            $ch = curl_init($url);

                            // Set cURL options
                            curl_setopt($ch, CURLOPT_HTTPHEADER, [
                                'Content-Type: application/json',
                                'freelancer-oauth-v1: ' . $flToken
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
                                dump($responseData->request_id);
                                dump($newProject->id);
                            } else {
                                dump('Failed');
                            }
                        }
                    }
                }
            }
        }
        dd('closed');
    }
}
