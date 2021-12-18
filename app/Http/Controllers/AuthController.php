<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function login (){
        return view("login",[
            "title"=>"Login"
        ]);
    }

    public function authenticate (Request $request){
        $fields=$request->validate([            
            'email'=>'required|email:dns',
            'password'=>'required|string',
        ]);

        // //check email
        // $user=User::where('email',$fields['email'])->first();

        // //check password
        // if(!$user || !Hash::check($fields['password'],$user->password)){
        //     return redirect()->intended('/login');
        // }

        // //get token
        // $token=$user->createToken('myapptoken')->plainTextToken;

        // return redirect()->intended('/');

        dd("berajsl login");
        
    }

    public function logout(Request $request){
        auth()->user()->tokens()->delete();

        return[
            'message'=>'Logged out'
        ];
    }
}
