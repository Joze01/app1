<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;
class modelUbicacion extends Model
{
      protected $table = 'Ubicacion';
      protected $primaryKey ='ubicacionId';
      public $timestamps = false;

      public function buscarbyDato (){
      
      }


}
