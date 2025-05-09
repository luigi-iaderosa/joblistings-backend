<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoleUser extends Model
{
    use HasFactory;
    protected $table = 'role_user';
    protected $primaryKey = 'id_role_user';
    protected $guarded = ['id_role_user'];
    public $timestamps = false;
}
