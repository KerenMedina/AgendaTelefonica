<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Agenda extends Model
{

    public function scopeBuscarpor($query, $tipo, $busqueda)
    {
        if($tipo && $busqueda){
            return $query->where($tipo, 'like', "%$busqueda%");
        }
    }
}
