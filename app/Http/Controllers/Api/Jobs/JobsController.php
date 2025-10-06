<?php

namespace App\Http\Controllers\Api\Jobs;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Api\Jobs\ApiJobsApplyToJobRequest;
use App\Http\Requests\Api\Jobs\ApplyToJobRequest;
use App\Http\Requests\Api\Jobs\CreateJobRequest;
use App\Http\Requests\Api\Jobs\DeleteJobRequest;
use App\Http\Requests\Api\Jobs\UpdateJobRequest;
use App\Http\Requests\Api\Jobs\ViewJobRequest;
use App\Models\Job;
use App\Models\Subscription;

class JobsController extends Controller
{
    public function jobs(Request $request){
        if ($request->user()->can('view',Job::class)){
            $jobs = Job::paginate(15);
            return response()->json($jobs);
        }
        return response()->json(['error'=>'Unqualified user'],400);
    }


    public function view(ViewJobRequest $request){
        $user = $request->user();
        if ($request->user()->can('view',Job::class)){
            $job = Job::find(
                $request->id
            );
            $job->load('company');
            return response()->json($job);
        }
        return response()->json(['error'=>'Unqualified user'],400);
    }


    public function create(CreateJobRequest $request){
        $user = $request->user();
        if ($request->user()->can('create',Job::class)){
            $job = Job::create([
                'name'=>$request->name,
                'description'=>$request->description,
                'salary'=>$request->salary,
                'location'=>$request->location,
                'id_company'=>$request->company_id,
                'job_type'=>$request->type
            ]);
            return response()->json($job);
        }
        return response()->json(['error'=>'Unqualified user'],400);
    }

    public function update(UpdateJobRequest $request){
        if ($request->user()->can('update',Job::class)){
            $job = Job::where([['id_job','=',$request->id]])->update([
                'name'=>$request->name,
                'description'=>$request->description,
                'salary'=>$request->salary,
                'location'=>$request->location,
                'id_company'=>$request->id_company,
                'job_type'=>$request->job_type
            ]);
            return response()->json($job);
        }
        return response()->json(['error'=>'Unqualified user'],400);
    }

    public function delete(DeleteJobRequest $request){
        if ($request->user()->can('delete',Job::class)){
            $job = Job::where([['id_job','=',$request->id]])->delete();
            return response()->json([]);
        }
        return response()->json(['error'=>'Unqualified user'],400);

    }


    public function apply(ApplyToJobRequest $request){  
        $new =  Subscription::create(['id_user'=>$request->user_id,'id_job'=> $request->job_id,'created_at'=>now()]);
        return response()->json($new);
    }

}
