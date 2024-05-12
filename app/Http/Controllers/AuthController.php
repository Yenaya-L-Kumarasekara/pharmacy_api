<?php


namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function register(Request $request)
    {

        try {
            $request->validate([
                'name' => 'required',
                'username' => 'required|unique:users',
                'email' => 'required|email|unique:users',
                'password' => 'required',
                'role' => 'required|in:Owner,Manager,Cashier',
            ]);
        
            $user = User::create([
                'name' => $request->name,
                'username' => $request->username,
                'email' => $request->email,
                'password' => bcrypt($request->password),
                'role' => $request->role,
            ]);
        
            return response()->json(['message' => 'User created successfully'], 200);
        
        } catch (ValidationException $e) {
            return response()->json(['message' => $e->validator->errors()], 422);
        
        } catch (\Exception $e) {
            return response()->json(['message' => 'User registration failed!'], 400);
        }
}
    

    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)) {
            // Authentication passed
            $user = Auth::user();
            $token = $user->createToken('YourAppNameToken')->accessToken;
    
            // Return the user data along with the token
            return response()->json([
                'user' => $user,
                'access_token' => $token,
            ]);
        }

        // Authentication failed
        return response()->json(['message' => 'Unauthorized'], 401);
    }

    public function logout(Request $request)
    {
        $user = Auth::user();

        if ($user) {
            $user->token()->revoke();
            return response()->json(['message' => 'Successfully logged out']);
        }
    
        return response()->json(['message' => 'Unauthorized'], 401);
    }
}
