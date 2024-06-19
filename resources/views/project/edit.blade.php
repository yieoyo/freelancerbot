@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">{{ __('Bot Update')}}</h5>
                </div>
                <div class="card-body">
                    <form method="POST" action="{{ route('bot.update') }}">
                        @csrf
                        @method('PUT')

                        <div class="mb-3">
                            <label for="fluser_id" class="form-label">FL User ID</label>
                            <input type="text" class="form-control" id="fluser_id" name="fluser_id" value="{{ $setting->fluser_id }}" required>
                        </div>
                        
                        <div class="mb-3">
                            <label for="fluser_token" class="form-label">FL User Token</label>
                            <input type="text" class="form-control" id="fluser_token" name="fluser_token" value="{{ $setting->fluser_token }}" required>
                        </div>
                        
                        <div class="mb-3">
                            <label for="page_limit" class="form-label">Page Limit</label>
                            <input type="text" class="form-control" id="page_limit" name="page_limit" value="{{ $setting->page_limit }}" required>
                        </div>
                        
                        <div class="mb-3">
                            <label for="min_price" class="form-label">Min Price</label>
                            <input type="text" class="form-control" id="min_price" name="min_price" value="{{ $setting->min_price }}" required>
                        </div>
                        
                        <div class="mb-3">
                            <label for="buyer_reputation" class="form-label">Buyer Reputation</label>
                            <input type="text" class="form-control" id="buyer_reputation" name="buyer_reputation" value="{{ $setting->buyer_reputation }}" required>
                        </div>
                        
                        <div class="mb-3">
                            <label for="bid_period" class="form-label">Bid Period</label>
                            <input type="text" class="form-control" id="bid_period" name="bid_period" value="{{ $setting->bid_period }}" required>
                        </div>
                        
                        <div class="mb-3">
                            <label for="bid_proposal" class="form-label">Bid Proposal</label>
                            <textarea class="form-control" id="bid_proposal" name="bid_proposal" rows="3" required>{{ $setting->bid_proposal }}</textarea>
                        </div>
                        
                        <div class="mb-3">
                            <label for="skip_project" class="form-label">Skip Project</label>
                            <textarea class="form-control" id="skip_project" name="skip_project" rows="3" required>{{ $setting->skip_project }}</textarea>
                        </div>
                        
                        <div class="form-check mb-3">
                            <label for="status" class="form-label">Status</label>
                            <select class="form-select" id="status" name="status">
                                <option value="1" {{ $setting->status ? 'selected' : '' }}>Active</option>
                                <option value="0" {{ !$setting->status ? 'selected' : '' }}>Inactive</option>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-success">
                            <i class="bi bi-check-lg"></i> Save
                        </button>
                        <a href="{{ route('bot.settings') }}" class="btn btn-secondary">
                            <i class="bi bi-arrow-left"></i> Back
                        </a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
