<?php

namespace App\Http\Controllers\Api\Calendar;

use App\Http\Controllers\Controller;
use App\HttpSDK\GCalendarSDK\GoogleCalendarSDK;
use App\Models\Subscription;
use DateInterval;
use DateTime;
use DateTimeZone;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class CalendarController extends Controller
{
    public function seeAll(Request $request){

    }


    public function aproxAdd(Request $request){
        /**
         * Da parte dell'utente è lecito pensare che arrivino solo:
         * subscription id
         * orario
         * id utente
         */
        $subscriptionId = $request->subscription_id;
        $date = $request->date_requested;
        $subscription = Subscription::find($subscriptionId);
        $subscription->load(['jobPlus','user']);
        #dd($subscription);
        #Log::debug('aprox add debug',[$subscriptionId,$date,$user]);
        
        # $gCalendarSdk = new GoogleCalendarSDK();
        #
        #$setEventResult = $gCalendarSdk->setEvent('Cinema con guanchotòn','2025-12-08T20:00:00','2025-12-08T23:30:00');
        
        $formatEventDescription = $this->formatEventDescription($subscription);
        $formatDateForGCalendar = $this->formatDateForGCalendar($date);
        $gCalendarSdk = new GoogleCalendarSDK();
        $setEventResult = $gCalendarSdk->setEvent($formatEventDescription,$formatDateForGCalendar['date_start'],$formatDateForGCalendar['date_end']);
        Log::debug("Calendar controller add gcal call",['gcal'=>$setEventResult,'date_start'=>$formatDateForGCalendar['date_start'],'date_end'=>$formatDateForGCalendar['date_end']]);
        return response()->json($setEventResult);
    }


    /**
         * Cosa inviare a google calendar?
         * un evento costruito da:
         * email|company|job|{subscription_id}|orario
         * 
         * 
         * 
         */
    private function formatEventDescription($subscription){
        $email = $subscription->user->email;
        $company = $subscription->jobPlus->company->name;
        $job = $subscription->jobPlus->job_name . ' ' . $subscription->jobPlus->job_type;
        return $email.'|'.$company.'|'.$job.'|{'.$subscription->id_subscription.'}';

    }


    private function formatDateForGCalendar($date){
        $dateForGCalendar = [];
        $dateForGCalendar['orig_request'] = $date;
        $dateTimeStartingPoint = new DateTime($date);
        $dateTimeStartingPoint->setTimezone(new DateTimeZone('Europe/Rome'));
        $dateForGCalendar['date_start'] = str_replace(' ','T',$dateTimeStartingPoint->format('Y-m-d H:i:s')) ;
        $dateForGCalendar['date_end'] = str_replace(' ','T',$dateTimeStartingPoint->add(new DateInterval('PT30M'))->format('Y-m-d H:i:s'));
        return $dateForGCalendar;
    }
}
