<?php

namespace App\Http\Controllers\Companies;

use App\Http\Controllers\Controller;
use App\Models\Company;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use PgSql\Lob;

class CompaniesController extends Controller
{
    public function companies(){
        $companies = Company::paginate(15);
        return response()->json($companies);
    }

    public function view(){
        $idCompany = request('id');
        $company = Company::find($idCompany);
        return response()->json($company);
    }

    public function edit(Request $request){
        $idCompany = request('id_company');
        Company::where([['id_company','=',$idCompany]])->update([
            'name'=>$request->name,
            'contact_email'=>$request->contact_email,
            'contact_phone'=>$request->contact_phone,
            'description'=>$request->description,
        ]);
        return response()->json(['data'=>'Update Company Ok']);


    }


    public function create(Request $request){
        $data = [
            'name'=>$request->name,
            'contact_email'=>$request->contact_email,
            'contact_phone'=>$request->contact_phone,
            'description'=>$request->description,
        ];
        Company::create($data);
        return response()->json(['data'=>'Create Company Ok']);
    }


    public function delete(Request $request){
        $idCompany = request('id');
        Log::debug('COMPANY . DELETE - ID: '.$idCompany);
        Company::where([['id_company','=',$idCompany]])->delete();
        return response()->json(['data'=>'Delete Company Ok']);
    }
}
