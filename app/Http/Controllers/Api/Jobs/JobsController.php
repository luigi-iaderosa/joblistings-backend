<?php

namespace App\Http\Controllers\Api\Jobs;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Api\Jobs\CreateJobRequest;
use App\Http\Requests\Api\Jobs\DeleteJobRequest;
use App\Http\Requests\Api\Jobs\UpdateJobRequest;
use App\Http\Requests\Api\Jobs\ViewJobRequest;
use App\Models\Job;
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


}
