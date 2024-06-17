<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;
    protected $table = 'projects';
    protected $fillable = [
        'projectid',
        'userid',
        'seo_url',
        'name',
        'employer_reputation',
        'country',
        'currency',
        'pub_time',
        'min_price',
        'avg_price',
        'bid_count',
        'bid_price',
        'period',
        'request_id',
        'status'
    ];


}
