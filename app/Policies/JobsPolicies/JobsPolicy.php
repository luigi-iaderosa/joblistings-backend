<?php

namespace App\Policies\JobsPolicies;

use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;
use Illuminate\Auth\Access\Response;
use Illuminate\Support\Facades\Log;

class JobsPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function create(User $user){
        return $this->requestedByInternal($user);
    }

    public function update(User $user)
    {
        return $this->requestedByInternal($user);
    }

    public function delete(User $user){
        return $this->requestedByInternal($user);
    }

    public function view(User $user){
        return Response::allow();
    }

    private function requestedByInternal(User $user){
        return $user->role->first()->description == 'Minion' ||
        $user->role->first()->description == 'Overlord' ? Response::allow() : Response::deny('Not your monkey');
    }



}
