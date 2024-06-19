<?php

use App\Http\Controllers\BotController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Artisan;
Route::get('/run-migrations', function () {
    try {
        Artisan::call('migrate');
        return response()->json(['status' => 'Migrations run successfully']);
    } catch (\Exception $e) {
        return response()->json(['status' => 'Migration failed', 'error' => $e->getMessage()]);
    }
});
Route::get('/', function () {
    return view('welcome');
});
Route::get('/login', 'App\Http\Controllers\Auth\LoginController@showLoginForm')->name('login');
Route::post('/login', 'App\Http\Controllers\Auth\LoginController@login');
Route::post('/logout', 'App\Http\Controllers\Auth\LoginController@logout')->name('logout');
Route::get('/bot', [App\Http\Controllers\BotController::class, 'startBot'])->name('bot.startBot');
Route::middleware(['auth'])->group(function () {
    Route::get('/home', [App\Http\Controllers\HomeController::class, 'home'])->name('home');
    Route::get('/settings', [App\Http\Controllers\BotController::class, 'getSetting'])->name('bot.settings');
    Route::get('/settings/edit', [App\Http\Controllers\BotController::class, 'editSetting'])->name('bot.edit');
    Route::put('/settings/update', [App\Http\Controllers\BotController::class, 'updateSetting'])->name('bot.update');
    Route::get('/projects', [App\Http\Controllers\ProjectController::class, 'index'])->name('project.index');
    Route::delete('/projects/truncate', [App\Http\Controllers\ProjectController::class, 'truncate'])->name('project.truncate');
});