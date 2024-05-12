<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Customer extends Model
{
    protected $table = 'customer';
    protected $primaryKey = 'idcustomer';

    use SoftDeletes;

    protected $fillable = [
        'first_name', 'last_name', 'phone_number', 'email', 'address'
    ];

}