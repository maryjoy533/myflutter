<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api',['except' =>['login', 'register']]);
    }

    public function login(Request $request)
    {
        $credecials = $request->only('email', 'password');
        if ($token = auth('api')->attempt($credecials)) {
            return response()->json(['status' => true, 'data' => $this->respondWithToken($token)]);
        }
        return response()->json(['status' => false, 'data' => 'Invalid Username or Password.']);
    }
    public function register(Request $request)
    {
        $record = new User;
        $record -> name = $request->name;
        $record -> email = $request->email;
        $record -> password = Hash::make($request->password);
        // $record -> phone = $request->phone;
        // $record -> address = $request->address; 

        $record->save();
        // return true;
        return response()->json(['status' => true, 'message' => 'User Createred']);
    }

    public function guard(){
        return \Auth::guard('api');
    }

    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => $this->guard()->factory()->getTTl() * 60,
        ]);
    }
}
