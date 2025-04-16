<?php

namespace Database\Seeders;

use App\Models\Job;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\File;

class JobsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $file = json_decode(file_get_contents(storage_path('jobs.json')));

        foreach ($file->jobs as $line){
            Job::create([
                'job_type'=>$line->type,
                'name'=>isset($line->title)?$line->title:'TEMPORARY JOB NAME',
                'description'=>$line->description,
                'salary'=>$line->salary,
                'location'=>$line->location,
            ]);
        }
    }
}
