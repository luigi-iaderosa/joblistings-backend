<?php

namespace App\Models\SearchModels;

use Jenssegers\Mongodb\Eloquent\Model;

class JobSearchModel extends Model
{
    protected $connection = 'mongodb';
    protected $collection = 'jobs';
}