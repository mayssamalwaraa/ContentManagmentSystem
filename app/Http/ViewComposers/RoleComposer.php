<?php

namespace App\Http\ViewComposers;

use App\Models\Role;
use Illuminate\View\View;

class RoleComposer{
    protected $roles;

    public function __construct(Role $roles)
    {
        $this->roles = $roles;
    }
    public function compose(View $view){
        $view->with('roles',$this->roles->all());
    }

}