<?php
use App\Http\Controllers\JobController;
use App\Http\Controllers\AuthController;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;


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
Route::get("/register",[AuthController::class,'register'])->middleware('guest');
Route::get('/',[AuthController::class,'login'])->middleware('guest');
Route::get("/login",[AuthController::class,'login'])->middleware('guest');
Route::post("/login",[AuthController::class,'authenticate']);
Route::post("/logout",[AuthController::class,'logout']);


//Route::group(['middleware'=>['auth:sanctum']], function () {
    
    Route::get('/home',[JobController::class,'index'])->middleware('auth');
    Route::get('/page/{page}',[JobController::class,'index']);

    Route::get('/detail/{id}',[JobController::class,'detail']);
    Route::get('/search',[JobController::class,'search']);
//});

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });
