<?php

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

Route::get('/', 'homeController@index')->name('home');

Route::get('/login','MemberController@getlogin')->name('Auth.login');

Route::get('addPlayer',[
  'uses'=>'MemberController@getAddPlayer',
  'as'=>'addPlayer',
]);

Route::post('/addPlayer',[
  'uses'=>'MemberController@postAddPlayer',
  'as'=>'addPlayer',
]);

Route::get('/AllPlayers',[
  'uses'=>'MemberController@getAllPlayers',
  'as'=>'player.AllPlayers',
]);

// get the update profile page
Route::get('update/{member}',[
  'uses'=>'MemberController@getUpdateProfile',
  'as'=>'profile.update',

]);

// route to post update profile pag
Route::post('/update/{member}',[
  'uses'=>'MemberController@postUpdateProfile',
  'as'=>'profile.update',
]);

 //Image Uplaad

Route::get('avatar/{member}',[
  'uses'=>'MemberController@getAvatar',
  'as'=>'profile.avatar',

]);

Route::post('/avatar/{member}',[
  'uses'=>'MemberController@postAvatar',
  'as'=>'profile.avatar',
]);

//Route to All matches
Route::get('matches/{member}',[
  'uses'=>'MemberController@getMyMatches',
  'as'=>'scores.matches',
]);

//Route to the matches won
Route::get('winned/{member}',[
  'uses'=>'MemberController@getMywinnedMatches',
  'as'=>'scores.winnedMatches',
]);

//Route to the matches Lost
Route::get('lost/{member}',[
  'uses'=>'MemberController@getMyLostMatches',
  'as'=>'scores.lostMatches',
]);
Route::get('/scores/{member}',[
'uses'=>'MemberController@getMyScores',
'as'  =>'scores.index',
]);
Route::get('/board',[
  'uses'=>'BoardController@BoardPlayers',
  'as'=>'board.index',
]);
