<?php
namespace App\Http\Controllers\Api\Users;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class UserInfoController extends Controller {
    public function userInfo(Request $request){
        return json_encode($request->user());
    }
}
