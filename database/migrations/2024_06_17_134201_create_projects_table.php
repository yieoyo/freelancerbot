<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->id();
            $table->string('projectid');
            $table->string('userid');
            $table->text('seo_url');
            $table->text('name');
            $table->string('employer_reputation');
            $table->string('country');
            $table->string('currency');
            $table->string('pub_time');
            $table->string('min_price');
            $table->string('avg_price');
            $table->string('bid_count');
            $table->string('bid_price');
            $table->string('period')->default('10');
            $table->string('request_id')->default('')->nullable();
            $table->boolean('status')->default(false);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('projects');
    }
};
