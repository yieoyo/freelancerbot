@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="mt-5 mb-4">{{ __('Projects')}}</h1>
    <form action="{{ route('project.truncate') }}" method="POST">
        @csrf
        @method('DELETE')
        <button class="btn btn-danger mb-2" type="submit" onclick="return confirm('Are you sure you want to delete all projects?')">Delete All Projects</button>
    </form>
    <div class="row g-4">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered settings-table">
                            <thead>
                                <tr>
                                    <th>Project Name</th>
                                    {{-- <th>Project ID</th> --}}
                                    <th>Reputation</th>
                                    <th>Publication</th>
                                    <th>Bid Time</th>
                                    <th>Country</th>
                                    <th>Currency</th>
                                    <th>Minimum</th>
                                    <th>Average.</th>
                                    <th>Bid Coun</th>
                                    <th>Bid Price</th>
                                    <th>Period</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($projects as $project)
                                @php
                                $readableTime = \Carbon\Carbon::createFromTimestamp($project->pub_time)->format('d M Y, h:i A');
                                @endphp
                                <tr>
                                    <td><a href="http://www.freelancer.com.bd/projects/{{$project->seo_url}}" target="_blank" rel="noopener noreferrer">{{ $project->name }}</a></td>
                                    {{-- <td>{{ $project->projectid }}</td> --}}
                                    <td>{{ number_format($project->employer_reputation, 1) }}</td>
                                    <td>{{ $readableTime }}</td>
                                    <td>{{ $project->created_at->format('d M Y, h:i A') }}</td>
                                    <td>{{ $project->country }}</td>
                                    <td>{{ $project->currency }}</td>
                                    <td>{{ $project->min_price }}</td>
                                    <td>{{ ceil($project->avg_price) }}</td>
                                    <td>{{ $project->bid_count }}</td>
                                    <td>{{ $project->bid_price }}</td>
                                    <td>{{ $project->period }}</td>
                                    <td>
                                        <span class="badge {{ $project->status == 1 ? 'bg-success' : 'bg-danger' }}">
                                            {{ $project->status == 1 ? 'Success' : 'Failed' }}
                                        </span>
                                    </td>

                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@push('script')
<script>
    $(document).ready(function() {
        $('.settings-table').DataTable();
    });
</script>
@endpush