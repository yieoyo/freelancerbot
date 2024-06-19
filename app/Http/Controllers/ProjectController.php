<?php

namespace App\Http\Controllers;

use App\Models\Project;
use Illuminate\Http\Request;

class ProjectController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        if(!auth()->user()->role === 'admin'){
            abort(403, 'You are not authorized');
        }
        return view('project.index', [
            'projects' => Project::orderBy('created_at', 'desc')->get(),
        ]);
    }

    public function truncate()
    {
        Project::truncate();
        return redirect()->route('project.index')->with('success', 'All projects have been deleted.');
    }
}
