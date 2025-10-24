<?php

namespace App\Http\Controllers\Api\Subscriptions;

use App\Http\Controllers\Controller;
use App\Models\Subscription;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SubscriptionsController extends Controller
{
    public function subscriptions(Request $request){
        $user = Auth::user();
        $user->load('subscriptions');
        return json_encode($user);
    }


    public function delete(Request $request){
        $target = Subscription::find($request->id);
        $target->delete();
        return json_encode(['delete'=>'ok']);
    }


    public function changeStatus(Request $request){
        $target = Subscription::find($request->id_subscription);
        $target->status = $request->status;
        $target->save();
        return json_encode(['change_status'=>'ok']);
    }
}
