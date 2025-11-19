<?php

namespace App\Http\Controllers\Api\QuickSearch;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SearchModels\JobSearchModel;
use MongoDB\BSON\Regex as MongoRegex;
class QuickSearchController extends Controller
{
    public function quickSearchJob(Request $request){
        $searchField = $request->search_field;
        $regex = new MongoRegex($searchField, 'i');
        
        return response()->json(JobSearchModel::where(function($query) use ($regex){
            $query->where('job_type','regex',$regex)->
                orWhere('job_name','regex',$regex)->
                orWhere('company_name','regex',$regex);
         })->get(),200);

        
        #return response()->json(JobSearchModel::all());
    }
}
