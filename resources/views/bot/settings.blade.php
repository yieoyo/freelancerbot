@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="mt-5 mb-4">{{ __('Bot Settings')}}</h1>
    <div class="row g-4">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <a href="{{ route('bot.edit') }}" class="btn btn-danger btn-sm float-end">
                        <i class="bi bi-pencil-square"></i> Edit
                    </a>
                </div>
                <div class="card-body">
                    <p><strong>FL User ID:</strong> {{ $setting->fluser_id }}</p>
                    <p><strong>FL User Token:</strong> {{ $setting->fluser_token }}</p>
                    <p><strong>Page Limit:</strong> {{ $setting->page_limit }}</p>
                    <p><strong>Min Price:</strong> {{ $setting->min_price }}</p>
                    <p><strong>Buyer Reputation:</strong> {{ $setting->buyer_reputation }}</p>
                    <p><strong>Bid Period:</strong> {{ $setting->bid_period }}</p>
                    <p><strong>Bid Proposal:</strong> {{ $setting->bid_proposal }}</p>
                    <p><strong>Skip Project:</strong> {{ $setting->skip_project }}</p>
                    <p><strong>Allow Country:</strong> {{ $setting->allow_country }}</p>
                    <p><strong>Allow Skill:</strong> {{ $setting->allow_skill }}</p>
                    <p><strong>Status:</strong> {{ $setting->status ? 'Active' : 'Inactive' }}</p>
                </div>
            </div>
        </div>
    </div>

</div>
@endsection