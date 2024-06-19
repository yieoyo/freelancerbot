<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BotSetting extends Model
{
    use HasFactory;

    protected $table = 'bot_settings';
    protected $fillable = [
        'fluser_id',
        'fluser_token',
        'page_limit',
        'min_price',
        'buyer_repuration',
        'bid_period',
        'bid_proposal',
        'skip_project',
        'allow_country',
        'allow_skill',
        'status',
    ];
}
