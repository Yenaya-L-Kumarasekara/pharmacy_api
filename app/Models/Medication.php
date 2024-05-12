<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Medication extends Model
{
    protected $table = 'medication';
    protected $primaryKey = 'idmedication';

    use SoftDeletes;

    protected $fillable = ['name', 'description', 'quantity','buying_price','selling_price','total_price','discount','lot_number','expiry_date','manufacture_date','category_idcategory'];
   

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_idcategory', 'idcategory');
    }
}