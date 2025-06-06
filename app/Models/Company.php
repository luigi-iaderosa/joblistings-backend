<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;

    public $timestamps;
    protected $table = 'companies';
    protected $primaryKey = 'id_company';
    protected $guarded = ['id_company'];
}
