<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens,Notifiable;

    protected $fillable = [
        'name','email', 'username', 'password', 'role',
    ];

    protected $hidden = [
        'password',
    ];

    public function isAdmin()
    {
        return $this->role === 'Owner';
    }

    public function isManager()
    {
        return $this->role === 'Manager';
    }

    public function isCashier()
    {
        return $this->role === 'Cashier';
    }
}   
