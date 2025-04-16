<?php

namespace App\Http\Requests\Api\Jobs;

use Illuminate\Foundation\Http\FormRequest;

class UpdateJobRequest extends FormRequest
{


    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'id'=>'required'
        ];
    }

    public function prepareForValidation(){
        $this->merge(['id'=>$this->route('id')]);
    }
}
