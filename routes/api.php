<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\MedicationController;
use App\Http\Middleware\CheckRole;

// Route for user registration
Route::post('/register', [AuthController::class, 'register']);

// Routes accessible only to users with 'Owner' role
Route::middleware(['auth:api', CheckRole::class . ':Owner'])->group(function () {

    Route::resource('/category', CategoryController::class)->only(['store']);

    Route::resource('/customer', CustomerController::class)->only([ 'index','store','update','destroy']);

    Route::resource('/medication', MedicationController::class)->only([ 'index','store','update','destroy']);


});

// Routes accessible only to users with 'Manager' role
Route::middleware(['auth:api', CheckRole::class . ':Manager'])->group(function () {

    Route::resource('/customer', CustomerController::class)->only([ 'index','update','destroy']);

    Route::resource('/medication', MedicationController::class)->only([ 'index','update','destroy']);
});

// Routes accessible only to users with 'Cashier' role
Route::middleware(['auth:api', CheckRole::class . ':Cashier'])->group(function () {
    
    Route::resource('/customer', CustomerController::class)->only([ 'index','update']);

    Route::resource('/medication', MedicationController::class)->only([ 'index','update']);
});

// Route for user login
Route::post('/login', [AuthController::class, 'login'])->name('login');
Route::middleware('auth:api')->post('/logout',  [AuthController::class, 'logout']);

