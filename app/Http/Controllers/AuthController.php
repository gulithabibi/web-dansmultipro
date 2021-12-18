<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{

    public function register (){
        return view("register",[
            "title"=>"Register"
        ]);
    }

    public function login (){
        return view("login",[
            "title"=>"Login"
        ]);
    }

    public function authenticate (Request $request){
        $credentials=$request->validate([            
            'email'=>'required|email:dns',
            'password'=>'required|string',
        ]);

        //check email
        $user=User::where('email',$credentials['email'])->first();

        //check password
        if(!$user || !Hash::check($credentials['password'],$user->password)){
            //return redirect()->intended('/login');
            return back()->with('loginError','Login failed!');
        }

        //get token
        $token=$user->createToken('myapptoken')->plainTextToken;


        if(Auth::attempt($credentials)){
            $request->session()->regenerate();
            return redirect()->intended('/home');
        }
        
    }

    public function logout(Request $request){
        auth()->user()->tokens()->delete();

        Auth::logout();

        $request->session()->invalidate();
    
        $request->session()->regenerateToken();
    
        return redirect('/login');
    }
}
