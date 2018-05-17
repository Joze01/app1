<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class modelKeyword extends Model
{
    protected $table = 'Keyword';

	public $timestamps = false;
    protected $fillable = ['keywordNombre','keywordDescripcion'];

    protected $hidden = ['keywordId'];
}
