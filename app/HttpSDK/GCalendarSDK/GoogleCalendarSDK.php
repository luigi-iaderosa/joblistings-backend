<?php

namespace App\HttpSDK\GCalendarSDK;
use Google_Client as GoogleClient;
use Google_Service_Calendar as GoogleServiceCalendar;
use Google_Service_Calendar_Event as GoogleServiceCalendarEvent;
class GoogleCalendarSDK {

    private $gCalendarClient = null;
    public function __construct()
    {
       $this->createClient();
    }


    private function createClient(){
        $client = new GoogleClient();
        $gCalendarApplicationName = config('services.env.GOOGLE_CALENDAR_APPLICATION_NAME');
        $gServiceForCalendar = config('services.env.GOOGLE_SERVICE_ENTITY_FOR_CALENDAR');
        $client->setApplicationName($gCalendarApplicationName);
        $path = storage_path('google_calendar').DIRECTORY_SEPARATOR.$gServiceForCalendar;
        $client->setAuthConfig($path);
        $client->setScopes(GoogleServiceCalendar::CALENDAR);
        #$client->setSubject('your-user-to-impersonate@example.com'); // OPTIONAL (for domain accounts only)
        $this->gCalendarClient = $client;
    }

    public function getCalendar(){
        
        $gCalendarService = $this->createCalendarService();
        $calendarId = config('services.env.GOOGLE_CALENDAR_CALENDAR_ID');
        #return $gCalendarService->calendars->get($calendarId);
        return $gCalendarService->events->listEvents($calendarId);

    }

    private function createCalendarService(){
        return new GoogleServiceCalendar($this->gCalendarClient);
    }

    public function setEvent($eventContent,$startDate,$endDate){
        $gCalendarService = $this->createCalendarService();
        $calendarId = config('services.env.GOOGLE_CALENDAR_CALENDAR_ID');
        $calendarEventData = [
            'summary'=> $eventContent,
            'start'=> ['dateTime'=>$startDate.'+01:00'],
            'end'=> ['dateTime'=>$endDate.'+01:00'],
        ];
        #dd($calendarEventData);
        $gCalendarEvent = new GoogleServiceCalendarEvent($calendarEventData);
        $gCalendarServiceInsertResult = $gCalendarService->events->insert($calendarId,$gCalendarEvent);
        return $gCalendarServiceInsertResult;
    }

}