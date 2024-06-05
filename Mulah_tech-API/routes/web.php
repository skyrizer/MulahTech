<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\InputController;

Route::get('/', function () {
    return view('welcome');
});

route::get('/api/getInput', [InputController::class, 'getSortedData']);


