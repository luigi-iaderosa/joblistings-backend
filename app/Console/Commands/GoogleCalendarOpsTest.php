<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\HttpSDK\GCalendarSDK\GoogleCalendarSDK;
class GoogleCalendarOpsTest extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'gcalendar-test';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $gCalendarSdk = new GoogleCalendarSDK();
        $eventsInCalendar = $gCalendarSdk->getCalendar();
        dd($eventsInCalendar);
        #$setEventResult = $gCalendarSdk->setEvent('Cinema con guanchotòn','2025-12-08T20:00:00','2025-12-08T23:30:00');
        #dd($setEventResult);
    }
}
