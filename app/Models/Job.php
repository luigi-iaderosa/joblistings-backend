<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'jobs';
    protected $primaryKey = 'id_job';
    protected $guarded = ['id_job'];

    public function company(){
        return $this->hasOne(Company::class,'id_company','id_company');
    }




}
