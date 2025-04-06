<?php
namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller{

    public function login(Request $request){
        $credentials    =   $request->only('email', 'password');
        if (! Auth::attempt($credentials)) {
            return response()->json([
                'message' => 'User not found'
            ], 401);
        }
        else {
            $user   = User::where('email', $request->email)->firstOrFail();
            $token  = $user->createToken('auth_token')->plainTextToken;

            return response()->json([
                'message'       => 'Login success',
                'access_token'  => $token,
                'token_type'    => 'Bearer'
            ]);
        }
    }

}

