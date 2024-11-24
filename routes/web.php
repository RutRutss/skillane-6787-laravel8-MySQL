<?php

use App\Http\Controllers\CompanyController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use App\Models\Company;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/login', [UserController::class, 'show_login']);
Route::get('/logout', [UserController::class, 'logout'])->name('logout');

Route::post('/auth', [UserController::class, 'authen'])->name('auth');



Route::middleware('authen.admin')->group(function () {
    Route::get('/companies', [CompanyController::class, 'index'])->name('companies');
    Route::get('/company/{id}/view', [CompanyController::class, 'show'])->name('company.view');
    Route::get('/company/create', [CompanyController::class, 'create'])->name('company.create');
    Route::get('/company/{id}/edit', [CompanyController::class, 'edit'])->name('company.edit');

    Route::get('/company/{id}/hide', [CompanyController::class, 'hide_company'])->name('company.hide');
    Route::get('/company/{id}/show', [CompanyController::class, 'show_company'])->name('company.show');

    Route::post('/company/store', [CompanyController::class, 'store'])->name('company.store');
    Route::post('/company/{id}/update', [CompanyController::class, 'update'])->name('company.update');

    Route::get('/company/{id}/delete', [CompanyController::class, 'delete'])->name('company.delete');

    Route::get('/products', [ProductController::class, 'index'])->name('products');
    Route::get('/product/new', [ProductController::class, 'new_product'])->name('product.new');
    Route::get('/product/{gtin}/hide', [ProductController::class, 'hide_product'])->name('product.hide');
    Route::get('/product/{gtin}/show', [ProductController::class, 'show_product'])->name('product.show');
    Route::get('/product/{gtin}', [ProductController::class, 'show'])->name('product');
    Route::get('/product/{gtin}/delete', [ProductController::class, 'delete'])->name('product.delete');
    Route::get('/product/{gtin}/edit', [ProductController::class, 'edit'])->name('product.edit');

    Route::post('/product/store', [ProductController::class, 'store'])->name('product.store');
    Route::post('/product/{gtin}/update', [ProductController::class, 'update'])->name('product.update');
});
