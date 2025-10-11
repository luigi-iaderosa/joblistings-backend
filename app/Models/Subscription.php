<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subscription extends Model
{
    use HasFactory;

    protected $guarded = ['id_subscription'];
    protected $primaryKey = 'id_subscription';
    protected $table = 'subscriptions';
    public $timestamps = false;
    

    public function job(){
        return $this->hasOne(Job::class,'id_job','id_job');
    }

    public function jobPlus(){
        return $this->job()->with(['company']);
    }

}
