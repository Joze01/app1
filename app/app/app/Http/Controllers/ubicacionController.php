<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use DB;
class ubicacionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Json="[";
        $Tipo="";
        $Imgs="";
        $Redes="";
        $KeyWord="";

             $Ubicaciones = DB::table('Ubicacion')
                                ->join('Pais', 'Pais.paisId', '=', 'Ubicacion.ubicacionPais')
                                ->select('Ubicacion.*','Pais.*')
                                ->get();
        $lastPlace=count($Ubicaciones);
        $countPlace=1;
        foreach ($Ubicaciones as $place)
        { //start foreach ubicaciones
              
              $Json=$Json.'{
                            "_id": "'.$place->ubicacionId.'",
                            "placeName": "'.$place->ubicacionNombre.'",
                            "placeDescription": "'.$place->ubicacionDescripcion.'",
                            "placeAdress": "'.$place->ubicacionDireccion.'",
                            "placeLatitud": "'.$place->ubicacionLatitud.'",
                            "placePhone":"'.$place->telefono.'",
                            "placeLongitude": "'.$place->ubicacionLongitud.'",
                            "placeKinds":[ 
                            '; // en [ se inicia el array de tipos.

             $Tipos = DB::table('Tipo')
                        ->join('ubicacion_tipo','Tipo.tipoId','=','ubicacion_tipo.idTipo')
                        ->join('Ubicacion','Ubicacion.ubicacionId','=','ubicacion_tipo.idUbicacion')
                        ->select('Tipo.*')
                        ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                        ->get();

                $lastTipo=count($Tipos);
                $countTipos=1;
                foreach ($Tipos as $Tipo){
                    if($countTipos!=$lastTipo){
                            $Json=$Json.'{"place_KindId":"'.$Tipo->tipoId.'",
                            "place_KindName":"'.$Tipo->tipoNombre.'",
                            "place_KindDescription":"'.$Tipo->tipoDescripcion.'"},
                           ';
                    }else{
                            $Json=$Json.'{"place_KindId":"'.$Tipo->tipoId.'",
                            "place_KindName":"'.$Tipo->tipoNombre.'",
                            "place_KindDescription":"'.$Tipo->tipoDescripcion.'"}
                           ';
                    }
                  $countTipos++;          
                 }   //end for each tipos
                 $Json=$Json.'],
                              "socials":[';       

             $Redes= DB::table('redSocial')
                        ->join('SocialTipo','SocialTipo.socialTipoId','=','redSocial.idSocialTipo')
                        ->join('Ubicacion','Ubicacion.ubicacionId','=','redSocial.idUbicacion')
                        ->select('redSocial.*','SocialTipo.*')
                        ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                        ->get();
                      
                $lastRedes=count($Redes);
                $countRedes=1;
                foreach ($Redes as $Red)
                    { //start foreach redes 
                        if($lastRedes!=$countRedes){
                           $Json=$Json.'{
                                         "socialTipo_Id":"'.$Red->idSocialTipo.'",
                                         "sociallurl":"'.$Red->redSocialurl.'",
                                         "socialTipoNombre":"'.$Red->socialTipoNombre.'",
                                         "socialTipoDescripcion":"'.$Red->socialTipoDescripcion.'"
                                        },'; 
                        }else{
                           $Json=$Json.'{
                                         "socialTipo_Id":"'.$Red->idSocialTipo.'",
                                         "sociallurl":"'.$Red->redSocialurl.'",
                                         "socialTipoNombre":"'.$Red->socialTipoNombre.'",
                                         "socialTipoDescripcion":"'.$Red->socialTipoDescripcion.'"
                                        }'; 
                        }
                      $countRedes++;  
                    } //end for each redes 
                     $Json=$Json.'],
                                    "images":[';   




             $Imgs= DB::table('Img')
                        ->join('Ubicacion','Ubicacion.ubicacionId','=','Img.idUbicacion')
                        ->select('Img.*')
                        ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                        ->get(); 
                 $lastImgs=count($Imgs);
                 $countImgs=1;
                 foreach ($Imgs as $imagen){//foreach images
                    if($lastImgs!=$countImgs){
                         $Json=$Json.'{
                                        "img_Id":"'.$imagen->imgId.'",
                                        "imageurl":"'.$imagen->imgUrl.'"
                                      },';
                    }else{
                         $Json=$Json.'{
                                        "img_Id":"'.$imagen->imgId.'",
                                        "imageurl":"'.$imagen->imgUrl.'"
                                      }';
                    }
                    $countImgs++;
                 }//end foreach Imgs       
                  $Json=$Json.'],
                                "keywords":[';

             $KeyWords= DB::table('Keyword')
                        ->join('ubicacion_keyword','ubicacion_keyword.idKeyword','=','Keyword.keywordId')
                        ->join('Ubicacion','Ubicacion.ubicacionId','=','ubicacion_keyword.idUbicacion')
                        ->select('Keyword.*')
                        ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                        ->get(); 
                        
                         $lastKeywords=count($KeyWords);
                         $countKeyword=1;
                         foreach ($KeyWords as $keyword)//foreach keywords
                         {
                         if($lastKeywords!=$countKeyword){
                                $Json=$Json.'{
                                        "keyword_Id":"'.$keyword->keywordId.'",
                                        "keywordNombre":"'.$keyword->keywordNombre.'",
                                        "keywordDescripcion":"'.$keyword->keywordDescripcion.'"
                                      },'; 
                         }else{
                                $Json=$Json.'{
                                         "keyword_Id":"'.$keyword->keywordId.'",
                                         "keywordNombre":"'.$keyword->keywordNombre.'",
                                         "keywordDescripcion":"'.$keyword->keywordDescripcion.'"
                                      }';
                         }
                         $countKeyword++;
                        }//end for eachkeywords
                         $Json=$Json.']';
                         if($lastPlace!=$countPlace){
                            $Json=$Json.'},';
                         }else{
                            $Json=$Json.'}';
                         }
        $countPlace++;                              
        } //end for each ubicacion
         $Json=$Json.']';



    return view('ubicacion.index', ['Ubicaciones' => $Json]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
       
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }


    public function search($param){
        $paramLike="'%".$param."%'";
        $i =0;
        $Json="";

        $ubicacionesDone= array();


        $resultadosTipo = DB::table('Ubicacion')
                        ->join("ubicacion_tipo","ubicacion_tipo.idUbicacion","=","Ubicacion.ubicacionId")
                        ->join("Tipo","Tipo.tipoId","=","ubicacion_tipo.idTipo")
                        ->select('Ubicacion.*')
                        //->select('Ubicacion.ubicacionId as placeId' ,'Ubicacion.ubicacionNombre as placeName','Ubicacion.ubicacionDescripcion as placeDescription', 'Ubicacion.ubicacionLogo as placeLogo','Ubicacion.ubicacionDireccion as placeAdress','Ubicacion.ubicacionLatitud as placeLatitud','Ubicacion.ubicacionLongitud as placeLongitude')
                        ->whereRaw("Tipo.tipoNombre LIKE ".$paramLike)
                        ->get();

        $resultadosUbicaciones = DB::table('Ubicacion')
                        ->whereRaw("ubicacionNombre LIKE ".$paramLike)
                        ->select('Ubicacion.*')
                        ->get();

        $resultadosKeywords = DB::table('Ubicacion')
                        ->join("ubicacion_keyword","ubicacion_keyword.idUbicacion","=","Ubicacion.ubicacionId")
                        ->join("Keyword","ubicacion_keyword.idKeyword","=","Keyword.keywordId")
                        ->select('Ubicacion.*')
                        ->whereRaw("Keyword.keywordNombre LIKE ".$paramLike)
                        ->get();

        foreach ($resultadosTipo as $Ubicacion){
            $encontrado = 0;
            foreach ($ubicacionesDone as $dato){
                if($dato->ubicacionId == $Ubicacion->ubicacionId){
                    $encontrado=1;
                }//end if
            }//end foreach interno
            if($encontrado==0){
                array_push($ubicacionesDone,$Ubicacion);
            }//if encontrado
            
        }//end for each 
        

        foreach ($resultadosUbicaciones as $Ubicacion){
            $encontrado = 0;
            foreach ($ubicacionesDone as $dato){
                if($dato->ubicacionId == $Ubicacion->ubicacionId){
                    $encontrado=1;
                }//end if
            }//end foreach interno
            if($encontrado==0){
                array_push($ubicacionesDone,$Ubicacion);
            }//if encontrado
            
        }//end for each 

        foreach ($resultadosKeywords as $Ubicacion){
            $encontrado = 0;
            foreach ($ubicacionesDone as $dato){
                if($dato->ubicacionId == $Ubicacion->ubicacionId){
                    $encontrado=1;
                }//end if
            }//end foreach interno
            if($encontrado==0){
                array_push($ubicacionesDone,$Ubicacion);
            }//if encontrado
            
        }//end for each 
        
        $Ids = array();

        foreach ($ubicacionesDone as $lugar){
             $encontrado=0;
             $Tipos = DB::table('Tipo')
                        ->join('ubicacion_tipo','ubicacion_tipo.idTipo','=','Tipo.tipoId')
                        ->join('Ubicacion','Ubicacion.ubicacionId','=','ubicacion_tipo.idUbicacion')
                        ->whereRaw('Ubicacion.ubicacionId= '.$lugar->ubicacionId)
                        ->select('Tipo.*')
                        ->distinct('Tipo.tipoId')
                        ->get();

            foreach($Tipos as $tipo){         
                foreach ($Ids as $ida){
                    if($ida->tipoId == $tipo->tipoId){
                        $encontrado=1;
                    }//end if
                }//end foreach interno
                if($encontrado==0){
                    array_push($Ids,$tipo);
                }//if encontrado
            }
        }

       // dd($Ids);
       // dd($ubicacionesDone);
        
                        $Json=$Json.'{"lugares":[';  

           
                        $places = $ubicacionesDone;
                                   $countplaces=0;
                        $cantidadplaces=count($places)-1;                
                                foreach ($places as $place){
                                    if($cantidadplaces>=0){
                                        $Json=$Json.'{
                                            "placeId": "'.$place->ubicacionId.'",
                                            "placeName": "'.$place->ubicacionNombre.'",
                                            "placeDescription": "'.$place->ubicacionDescripcion.'",
                                            "placeAdress": "'.$place->ubicacionDireccion.'",
                                            "placePhone":"'.$place->telefono.'",
                                            "placeLogo":"'.$place->ubicacionLogo.'",
                                            "placeLatitud": "'.$place->ubicacionLatitud.'",
                                            "placeLongitude": "'.$place->ubicacionLongitud.'",
                                            "socials":['; 
                                                     $Redes= DB::table('redSocial')
                                                                ->join('SocialTipo','SocialTipo.socialTipoId','=','redSocial.idSocialTipo')
                                                                ->join('Ubicacion','Ubicacion.ubicacionId','=','redSocial.idUbicacion')
                                                                ->select('redSocial.*','SocialTipo.*')
                                                                ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                                                                ->get();
                                                              
                                                        $lastRedes=count($Redes);
                                                        $countRedes=1;
                                                        foreach ($Redes as $Red)
                                                            { //start foreach redes 
                                                                if($lastRedes!=$countRedes){
                                                                   $Json=$Json.'{
                                                                                 "socialTipo_Id":"'.$Red->idSocialTipo.'",
                                                                                 "sociallurl":"'.$Red->redSocialurl.'",
                                                                                 "socialTipoNombre":"'.$Red->socialTipoNombre.'",
                                                                                 "socialTipoDescripcion":"'.$Red->socialTipoDescripcion.'"
                                                                                },'; 
                                                                }else{
                                                                   $Json=$Json.'{
                                                                                 "socialTipo_Id":"'.$Red->idSocialTipo.'",
                                                                                 "sociallurl":"'.$Red->redSocialurl.'",
                                                                                 "socialTipoNombre":"'.$Red->socialTipoNombre.'",
                                                                                 "socialTipoDescripcion":"'.$Red->socialTipoDescripcion.'"
                                                                                }'; 
                                                                }



                                                              $countRedes++;  
                                                            } //end for each redes
                                                              $Json=$Json.'],
                                                                            "images":[';   
                                                     $Imgs= DB::table('Img')
                                                                ->join('Ubicacion','Ubicacion.ubicacionId','=','Img.idUbicacion')
                                                                ->select('Img.*')
                                                                ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                                                                ->get(); 
                                                     $lastImgs=count($Imgs);
                                                     $countImgs=1;
                                                     foreach ($Imgs as $imagen){//foreach images
                                                        if($lastImgs!=$countImgs){
                                                             $Json=$Json.'{
                                                                            "img_Id":"'.$imagen->imgId.'",
                                                                            "imageurl":"'.$imagen->imgUrl.'"
                                                                          },';
                                                        }else{
                                                             $Json=$Json.'{
                                                                            "img_Id":"'.$imagen->imgId.'",
                                                                            "imageurl":"'.$imagen->imgUrl.'"
                                                                          }';
                                                        }
                                                        $countImgs++;
                                                     }//end foreach Imgs                                                 
                                                    $Json=$Json.'],
                                                    "keywords":[';

                                                    $KeyWords= DB::table('Keyword')
                                                                    ->join('ubicacion_keyword','ubicacion_keyword.idKeyword','=','Keyword.keywordId')
                                                                    ->join('Ubicacion','Ubicacion.ubicacionId','=','ubicacion_keyword.idUbicacion')
                                                                    ->select('Keyword.*')
                                                                    ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                                                                    ->get(); 
                                                                    
                                                     $lastKeywords=count($KeyWords);
                                                     $countKeyword=1;
                                                     foreach ($KeyWords as $keyword)//foreach keywords
                                                     {
                                                     if($lastKeywords!=$countKeyword){
                                                            $Json=$Json.'{
                                                                    "keyword_Id":"'.$keyword->keywordId.'",
                                                                    "keywordNombre":"'.$keyword->keywordNombre.'",
                                                                    "keywordDescripcion":"'.$keyword->keywordDescripcion.'"
                                                                  },'; 
                                                     }else{
                                                            $Json=$Json.'{
                                                                     "keyword_Id":"'.$keyword->keywordId.'",
                                                                     "keywordNombre":"'.$keyword->keywordNombre.'",
                                                                     "keywordDescripcion":"'.$keyword->keywordDescripcion.'"
                                                                  }';
                                                     }
                                                     $countKeyword++;
                                                    }//end for eachkeywords
                                                     $Json=$Json.']';   
                                    }

                                    if($countplaces==$cantidadplaces){
                                           $Json = $Json."}";                                  
                                    }else if(($countplaces!=$cantidadplaces)&&($cantidadplaces>0)){
                                           $Json = $Json."},";
                                    }

                                  
                                $countplaces++;
                                }   //end places                       
                        $Json=$Json.']';

      
                $Json = $Json."}";
                echo $Json;
        


       //print_r($ubicacionesDone);
       // echo $Json.json_encode($ubicacionesDone)."}";
       // dd($resultadosTipo);               
       /* print_r($resultadosUbicaciones);                 
        print_r($resultadosKeywords);
        */

    }





    public function tipo($id)
    {
        $Json='';
        $Tipo="";
        $Imgs="";
        $Redes="";
        $KeyWord="";

        $Tipos = DB::table('Tipo')
                            ->join('Categoria','Categoria.categoriaId','=','Tipo.idCategoria')
                            ->whereRaw("Tipo.tipoId = ".$id)
                            ->select('Tipo.*','Categoria.*')
                            ->get();
        
        $ultimoTipo=count($Tipos)-1;
        $countTipo=0;
        foreach($Tipos as $tipo){ //inicia foreach de tipos
                        $Json=$Json.'
                            {"lugares":[';
                        $ubicacionesIds = DB::table('ubicacion_tipo')
                                            ->whereRaw("ubicacion_tipo.idTipo = ".$tipo->tipoId) 
                                            ->select("ubicacion_tipo.*") 
                                            ->get();

                        $countplaces=0;
                        $cantidadplaces=count($ubicacionesIds)-1;         

                        foreach ($ubicacionesIds as $ubicacionId){
                            $places = DB::table('Ubicacion')
                                          ->whereRaw("Ubicacion.ubicacionId = ".$ubicacionId->idUbicacion)
                                          ->select('Ubicacion.*') 
                                          ->orderBy('Ubicacion.ubicacionId','asc')
                                          ->get();

                                foreach ($places as $place){
                                    if($cantidadplaces>=0){
                                        $Json=$Json.'{
                                            "placeId": "'.$place->ubicacionId.'",
                                            "placeName": "'.$place->ubicacionNombre.'",
                                            "placeDescription": "'.$place->ubicacionDescripcion.'",
                                            "placeLogo":"'.$place->ubicacionLogo.'",
                                            "placePhone":"'.$place->telefono.'",
                                            "placeAdress": "'.$place->ubicacionDireccion.'",
                                            "placeLatitud": "'.$place->ubicacionLatitud.'",
                                            "placeLongitude": "'.$place->ubicacionLongitud.'",
                                            "socials":['; 
                                                     $Redes= DB::table('redSocial')
                                                                ->join('SocialTipo','SocialTipo.socialTipoId','=','redSocial.idSocialTipo')
                                                                ->join('Ubicacion','Ubicacion.ubicacionId','=','redSocial.idUbicacion')
                                                                ->select('redSocial.*','SocialTipo.*')
                                                                ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                                                                ->get();
                                                              
                                                        $lastRedes=count($Redes);
                                                        $countRedes=1;
                                                        foreach ($Redes as $Red)
                                                            { //start foreach redes 
                                                                if($lastRedes!=$countRedes){
                                                                   $Json=$Json.'{
                                                                                 "socialTipo_Id":"'.$Red->idSocialTipo.'",
                                                                                 "sociallurl":"'.$Red->redSocialurl.'",
                                                                                 "socialTipoNombre":"'.$Red->socialTipoNombre.'",
                                                                                 "socialTipoDescripcion":"'.$Red->socialTipoDescripcion.'"
                                                                                },'; 
                                                                }else{
                                                                   $Json=$Json.'{
                                                                                 "socialTipo_Id":"'.$Red->idSocialTipo.'",
                                                                                 "sociallurl":"'.$Red->redSocialurl.'",
                                                                                 "socialTipoNombre":"'.$Red->socialTipoNombre.'",
                                                                                 "socialTipoDescripcion":"'.$Red->socialTipoDescripcion.'"
                                                                                }'; 
                                                                }



                                                              $countRedes++;  
                                                            } //end for each redes
                                                              $Json=$Json.'],
                                                                            "images":[';   
                                                     $Imgs= DB::table('Img')
                                                                ->join('Ubicacion','Ubicacion.ubicacionId','=','Img.idUbicacion')
                                                                ->select('Img.*')
                                                                ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                                                                ->get(); 
                                                     $lastImgs=count($Imgs);
                                                     $countImgs=1;
                                                     foreach ($Imgs as $imagen){//foreach images
                                                        if($lastImgs!=$countImgs){
                                                             $Json=$Json.'{
                                                                            "img_Id":"'.$imagen->imgId.'",
                                                                            "imageurl":"'.$imagen->imgUrl.'"
                                                                          },';
                                                        }else{
                                                             $Json=$Json.'{
                                                                            "img_Id":"'.$imagen->imgId.'",
                                                                            "imageurl":"'.$imagen->imgUrl.'"
                                                                          }';
                                                        }
                                                        $countImgs++;
                                                     }//end foreach Imgs                                                 
                                                    $Json=$Json.'],
                                                    "keywords":[';

                                                    $KeyWords= DB::table('Keyword')
                                                                    ->join('ubicacion_keyword','ubicacion_keyword.idKeyword','=','Keyword.keywordId')
                                                                    ->join('Ubicacion','Ubicacion.ubicacionId','=','ubicacion_keyword.idUbicacion')
                                                                    ->select('Keyword.*')
                                                                    ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                                                                    ->get(); 
                                                                    
                                                     $lastKeywords=count($KeyWords);
                                                     $countKeyword=1;
                                                     foreach ($KeyWords as $keyword)//foreach keywords
                                                     {
                                                     if($lastKeywords!=$countKeyword){
                                                            $Json=$Json.'{
                                                                    "keyword_Id":"'.$keyword->keywordId.'",
                                                                    "keywordNombre":"'.$keyword->keywordNombre.'",
                                                                    "keywordDescripcion":"'.$keyword->keywordDescripcion.'"
                                                                  },'; 
                                                     }else{
                                                            $Json=$Json.'{
                                                                     "keyword_Id":"'.$keyword->keywordId.'",
                                                                     "keywordNombre":"'.$keyword->keywordNombre.'",
                                                                     "keywordDescripcion":"'.$keyword->keywordDescripcion.'"
                                                                  }';
                                                     }
                                                     $countKeyword++;
                                                    }//end for eachkeywords
                                                     $Json=$Json.']';   
                                    }

                                    if($countplaces==$cantidadplaces){
                                           $Json = $Json."}";                                  
                                    }else if(($countplaces!=$cantidadplaces)&&($cantidadplaces>0)){
                                           $Json = $Json."},";
                                    }

                                  
                                $countplaces++;
                                }          
                        }//end for each ubicaciones                  



                 $countTipo++;
                }//end for each tipos
                $Json=$Json."]}";   
                echo $Json;
    }

	public function geo($lat,$lon){
		$Json = "";
		$Json=$Json.'{"lugares" :[';

        $Ubicaciones = DB::table('Ubicacion')
        				->select('Ubicacion.*')
                        ->whereRaw("Ubicacion.mapIcon > 0") 
        				->get();

        $ultimaUbicacion=count($Ubicaciones)-1;
        $coutUbicacion=0;				
        foreach ($Ubicaciones as $place){
            
        	$Json =$Json.'{';
        			$Json=$Json.'"_id":"'.$place->ubicacionId.'",';
        			$Json=$Json.'"placeName":"'.$place->ubicacionNombre.'",';
        			$Json=$Json.'"MapIcon":"'.$place->mapIcon.'",';
					$Json=$Json.'"placePhone":"'.$place->telefono.'",';
        			$Json=$Json.'"placeLat":"'.$place->ubicacionLatitud.'",';	
        			$Json=$Json.'"placeLon":"'.$place->ubicacionLongitud.'",';	
        			$Json=$Json.'"Tipo":[';	
        					
        	 $Tipos = DB::table('Tipo')
        	 			->join('ubicacion_tipo','ubicacion_tipo.idTipo','=','Tipo.tipoId')
        	 			->whereRaw("ubicacion_tipo.idUbicacion=".$place->ubicacionId)
        	 			->get();
        	$ultimaTipo=count($Tipos)-1;
        	$coutUTipo=0;
        	foreach ($Tipos as $tipo){
        			$Json=$Json.'{';
        			$Json=$Json.'"tipoId":"'.$tipo->tipoId.'",';
        			$Json=$Json.'"tipoNombre":"'.$tipo->tipoNombre.'"';
        				if($ultimaTipo!=$coutUTipo){
        					$Json=$Json.'},';
        				}else{
        					$Json=$Json.'}';
        				}
        				$coutUTipo++;		
        	}


           

        	if($ultimaUbicacion!=$coutUbicacion){
        	$Json=$Json.']},';	
        	}else{
        	$Json=$Json.']}]}';		
        	}
        	$coutUbicacion++;
       
    }//end for each
        echo $Json;       	
	    
	}

public function categoria($id){
        $Json='{"tipos":[';
        $Tipo="";
        $Imgs="";
        $Redes="";
        $KeyWord="";

        $Tipos = DB::table('Tipo')
                            ->join('Categoria','Categoria.categoriaId','=','Tipo.idCategoria')
                            ->whereRaw("Categoria.categoriaId = ".$id)
                            ->select('Tipo.*','Categoria.*')
                            ->get();
        
        $ultimoTipo=count($Tipos)-1;
        $countTipo=0;
        foreach($Tipos as $tipo){ //inicia foreach de tipos
                        $Json=$Json.'{
                            "_id":"'.$tipo->tipoId.'",
                            "tipoNombre":"'.$tipo->tipoNombre.'",
                            "tipoDescripcion":"'.$tipo->tipoDescripcion.'",
                            "tipoLogo":"'.$tipo->tipoLogo.'",
                           
                            "lugares":[';
                        $ubicacionesIds = DB::table('ubicacion_tipo')
                                            ->whereRaw("ubicacion_tipo.idTipo = ".$tipo->tipoId) 
                                            ->select("ubicacion_tipo.*") 
                                            ->get();

                        $countplaces=0;
                        $cantidadplaces=count($ubicacionesIds)-1;         

                        foreach ($ubicacionesIds as $ubicacionId){
                            $places = DB::table('Ubicacion')
                                          ->whereRaw("Ubicacion.ubicacionId = ".$ubicacionId->idUbicacion)
                                          ->select('Ubicacion.*') 
                                          ->orderBy('Ubicacion.ubicacionId','asc')
                                          ->get();

                                foreach ($places as $place){
                                    if($cantidadplaces>=0){
                                        $Json=$Json.'{
                                            "placeId": "'.$place->ubicacionId.'",
                                            "placeName": "'.$place->ubicacionNombre.'",
                                            "placeDescription": "'.$place->ubicacionDescripcion.'",
                                            "placeLogo":"'.$place->ubicacionLogo.'",
                                            "placePhone":"'.$place->telefono.'",
                                            "placeAdress": "'.$place->ubicacionDireccion.'",
                                            "placeLatitud": "'.$place->ubicacionLatitud.'",
                                            "placeLongitude": "'.$place->ubicacionLongitud.'",
                                            "socials":['; 
                                                     $Redes= DB::table('redSocial')
                                                                ->join('SocialTipo','SocialTipo.socialTipoId','=','redSocial.idSocialTipo')
                                                                ->join('Ubicacion','Ubicacion.ubicacionId','=','redSocial.idUbicacion')
                                                                ->select('redSocial.*','SocialTipo.*')
                                                                ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                                                                ->get();
                                                              
                                                        $lastRedes=count($Redes);
                                                        $countRedes=1;
                                                        foreach ($Redes as $Red)
                                                            { //start foreach redes 
                                                                if($lastRedes!=$countRedes){
                                                                   $Json=$Json.'{
                                                                                 "socialTipo_Id":"'.$Red->idSocialTipo.'",
                                                                                 "sociallurl":"'.$Red->redSocialurl.'",
                                                                                 "socialTipoNombre":"'.$Red->socialTipoNombre.'",
                                                                                 "socialTipoDescripcion":"'.$Red->socialTipoDescripcion.'"
                                                                                },'; 
                                                                }else{
                                                                   $Json=$Json.'{
                                                                                 "socialTipo_Id":"'.$Red->idSocialTipo.'",
                                                                                 "sociallurl":"'.$Red->redSocialurl.'",
                                                                                 "socialTipoNombre":"'.$Red->socialTipoNombre.'",
                                                                                 "socialTipoDescripcion":"'.$Red->socialTipoDescripcion.'"
                                                                                }'; 
                                                                }



                                                              $countRedes++;  
                                                            } //end for each redes
                                                              $Json=$Json.'],
                                                                            "images":[';   
                                                     $Imgs= DB::table('Img')
                                                                ->join('Ubicacion','Ubicacion.ubicacionId','=','Img.idUbicacion')
                                                                ->select('Img.*')
                                                                ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                                                                ->get(); 
                                                     $lastImgs=count($Imgs);
                                                     $countImgs=1;
                                                     foreach ($Imgs as $imagen){//foreach images
                                                        if($lastImgs!=$countImgs){
                                                             $Json=$Json.'{
                                                                            "img_Id":"'.$imagen->imgId.'",
                                                                            "imageurl":"'.$imagen->imgUrl.'"
                                                                          },';
                                                        }else{
                                                             $Json=$Json.'{
                                                                            "img_Id":"'.$imagen->imgId.'",
                                                                            "imageurl":"'.$imagen->imgUrl.'"
                                                                          }';
                                                        }
                                                        $countImgs++;
                                                     }//end foreach Imgs                                                 
                                                    $Json=$Json.'],
                                                    "keywords":[';

                                                    $KeyWords= DB::table('Keyword')
                                                                    ->join('ubicacion_keyword','ubicacion_keyword.idKeyword','=','Keyword.keywordId')
                                                                    ->join('Ubicacion','Ubicacion.ubicacionId','=','ubicacion_keyword.idUbicacion')
                                                                    ->select('Keyword.*')
                                                                    ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                                                                    ->get(); 
                                                                    
                                                     $lastKeywords=count($KeyWords);
                                                     $countKeyword=1;
                                                     foreach ($KeyWords as $keyword)//foreach keywords
                                                     {
                                                     if($lastKeywords!=$countKeyword){
                                                            $Json=$Json.'{
                                                                    "keyword_Id":"'.$keyword->keywordId.'",
                                                                    "keywordNombre":"'.$keyword->keywordNombre.'",
                                                                    "keywordDescripcion":"'.$keyword->keywordDescripcion.'"
                                                                  },'; 
                                                     }else{
                                                            $Json=$Json.'{
                                                                     "keyword_Id":"'.$keyword->keywordId.'",
                                                                     "keywordNombre":"'.$keyword->keywordNombre.'",
                                                                     "keywordDescripcion":"'.$keyword->keywordDescripcion.'"
                                                                  }';
                                                     }
                                                     $countKeyword++;
                                                    }//end for eachkeywords
                                                     $Json=$Json.']';   
                                    }

                                    if($countplaces==$cantidadplaces){
                                           $Json = $Json."}";                                  
                                    }else if(($countplaces!=$cantidadplaces)&&($cantidadplaces>0)){
                                           $Json = $Json."},";
                                    }

                                  
                                $countplaces++;
                                }          
                        }//end for each ubicaciones                  
                        $Json=$Json.']';

                        if($ultimoTipo==$countTipo){
                            $Json=$Json.'}';
                        }else{
                            $Json=$Json.'},';
                        }

                 $countTipo++;
                }//end for each tipos   
                $Json = $Json."]}";
                echo $Json;
            } //end funcion categoria

 public function categoriaLimit($id,$limit){
        $Json='{"tipos":[';
        $Tipo="";
        $Imgs="";
        $Redes="";
        $KeyWord="";

        $Tipos = DB::table('Tipo')
                            ->join('Categoria','Categoria.categoriaId','=','Tipo.idCategoria')
                            ->whereRaw("Categoria.categoriaId = ".$id)
                            ->select('Tipo.*','Categoria.*')
                            ->get();
        
        $ultimoTipo=count($Tipos)-1;
        $countTipo=0;
        foreach($Tipos as $tipo){ //inicia foreach de tipos
                        $Json=$Json.'{
                            "_id":"'.$tipo->tipoId.'",
                            "tipoNombre":"'.$tipo->tipoNombre.'",
                            "tipoDescripcion":"'.$tipo->tipoDescripcion.'",
                            "tipoLogo":"'.$tipo->tipoLogo.'",
                        
                            "lugares":[';
                        $ubicacionesIds = DB::table('ubicacion_tipo')
                                            ->whereRaw("ubicacion_tipo.idTipo = ".$tipo->tipoId." limit ".$limit) 
                                            ->select("ubicacion_tipo.*") 
                                            ->get();

                        $countplaces=0;
                        $cantidadplaces=count($ubicacionesIds)-1;         

                        foreach ($ubicacionesIds as $ubicacionId){
                            $places = DB::table('Ubicacion')
                                          ->whereRaw("Ubicacion.ubicacionId = ".$ubicacionId->idUbicacion)
                                          ->select('Ubicacion.*') 
                                          ->get();

                                foreach ($places as $place){
                                    if($cantidadplaces>=0){
                                        $Json=$Json.'{
                                            "placeId": "'.$place->ubicacionId.'",
                                            "placeName": "'.$place->ubicacionNombre.'",
                                            "placeDescription": "'.$place->ubicacionDescripcion.'",
                                            "placeAdress": "'.$place->ubicacionDireccion.'",
                                            "placeLogo":"'.$place->ubicacionLogo.'",
                                            "placePhone":"'.$place->telefono.'",
                                            "placeLatitud": "'.$place->ubicacionLatitud.'",
                                            "placeLongitude": "'.$place->ubicacionLongitud.'",
                                            "socials":['; 
                                                     $Redes= DB::table('redSocial')
                                                                ->join('SocialTipo','SocialTipo.socialTipoId','=','redSocial.idSocialTipo')
                                                                ->join('Ubicacion','Ubicacion.ubicacionId','=','redSocial.idUbicacion')
                                                                ->select('redSocial.*','SocialTipo.*')
                                                                ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                                                                ->get();
                                                              
                                                        $lastRedes=count($Redes);
                                                        $countRedes=1;
                                                        foreach ($Redes as $Red)
                                                            { //start foreach redes 
                                                                if($lastRedes!=$countRedes){
                                                                   $Json=$Json.'{
                                                                                 "socialTipo_Id":"'.$Red->idSocialTipo.'",
                                                                                 "sociallurl":"'.$Red->redSocialurl.'",
                                                                                 "socialTipoNombre":"'.$Red->socialTipoNombre.'",
                                                                                 "socialTipoDescripcion":"'.$Red->socialTipoDescripcion.'"
                                                                                },'; 
                                                                }else{
                                                                   $Json=$Json.'{
                                                                                 "socialTipo_Id":"'.$Red->idSocialTipo.'",
                                                                                 "sociallurl":"'.$Red->redSocialurl.'",
                                                                                 "socialTipoNombre":"'.$Red->socialTipoNombre.'",
                                                                                 "socialTipoDescripcion":"'.$Red->socialTipoDescripcion.'"
                                                                                }'; 
                                                                }



                                                              $countRedes++;  
                                                            } //end for each redes
                                                              $Json=$Json.'],
                                                                            "images":[';   
                                                     $Imgs= DB::table('Img')
                                                                ->join('Ubicacion','Ubicacion.ubicacionId','=','Img.idUbicacion')
                                                                ->select('Img.*')
                                                                ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                                                                ->get(); 
                                                     $lastImgs=count($Imgs);
                                                     $countImgs=1;
                                                     foreach ($Imgs as $imagen){//foreach images
                                                        if($lastImgs!=$countImgs){
                                                             $Json=$Json.'{
                                                                            "img_Id":"'.$imagen->imgId.'",
                                                                            "imageurl":"'.$imagen->imgUrl.'"
                                                                          },';
                                                        }else{
                                                             $Json=$Json.'{
                                                                            "img_Id":"'.$imagen->imgId.'",
                                                                            "imageurl":"'.$imagen->imgUrl.'"
                                                                          }';
                                                        }
                                                        $countImgs++;
                                                     }//end foreach Imgs                                                 
                                                    $Json=$Json.'],
                                                    "keywords":[';

                                                    $KeyWords= DB::table('Keyword')
                                                                    ->join('ubicacion_keyword','ubicacion_keyword.idKeyword','=','Keyword.keywordId')
                                                                    ->join('Ubicacion','Ubicacion.ubicacionId','=','ubicacion_keyword.idUbicacion')
                                                                    ->select('Keyword.*')
                                                                    ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                                                                    ->get(); 
                                                                    
                                                     $lastKeywords=count($KeyWords);
                                                     $countKeyword=1;
                                                     foreach ($KeyWords as $keyword)//foreach keywords
                                                     {
                                                     if($lastKeywords!=$countKeyword){
                                                            $Json=$Json.'{
                                                                    "keyword_Id":"'.$keyword->keywordId.'",
                                                                    "keywordNombre":"'.$keyword->keywordNombre.'",
                                                                    "keywordDescripcion":"'.$keyword->keywordDescripcion.'"
                                                                  },'; 
                                                     }else{
                                                            $Json=$Json.'{
                                                                     "keyword_Id":"'.$keyword->keywordId.'",
                                                                     "keywordNombre":"'.$keyword->keywordNombre.'",
                                                                     "keywordDescripcion":"'.$keyword->keywordDescripcion.'"
                                                                  }';
                                                     }
                                                     $countKeyword++;
                                                    }//end for eachkeywords
                                                     $Json=$Json.']';   
                                    }

                                    if($countplaces==$cantidadplaces){
                                           $Json = $Json."}";                                  
                                    }else if(($countplaces!=$cantidadplaces)&&($cantidadplaces>0)){
                                           $Json = $Json."},";
                                    }

                                  
                                $countplaces++;
                                }          
                        }//end for each ubicaciones                  
                        $Json=$Json.']';

                        if($ultimoTipo==$countTipo){
                            $Json=$Json.'}';
                        }else{
                            $Json=$Json.'},';
                        }

                 $countTipo++;
                }//end for each tipos   
                $Json = $Json."]}";
                echo $Json;
            } //end funcion categoria


 public function listado(){
        $Json='';
        $Tipo="";
        $Imgs="";
        $Redes="";
        $KeyWord="";

       
                        $Json=$Json.'{"lugares":[';  

           
                            $places = DB::table('Ubicacion')
                                          ->select('Ubicacion.*') 
                                          ->orderBy('Ubicacion.ubicacionNombre')
                                          ->get();
                                   $countplaces=0;
                        $cantidadplaces=count($places)-1;                
                                foreach ($places as $place){
                                    if($cantidadplaces>=0){
                                        $Json=$Json.'{
                                            "placeId": "'.$place->ubicacionId.'",
                                            "placeName": "'.$place->ubicacionNombre.'",
                                            "placeDescription": "'.$place->ubicacionDescripcion.'",
                                            "placeAdress": "'.$place->ubicacionDireccion.'",
                                            "placeLogo":"'.$place->ubicacionLogo.'",
                                            "placePhone":"'.$place->telefono.'",
                                            "placeLatitud": "'.$place->ubicacionLatitud.'",
                                            "placeLongitude": "'.$place->ubicacionLongitud.'",
                                            "socials":['; 
                                                     $Redes= DB::table('redSocial')
                                                                ->join('SocialTipo','SocialTipo.socialTipoId','=','redSocial.idSocialTipo')
                                                                ->join('Ubicacion','Ubicacion.ubicacionId','=','redSocial.idUbicacion')
                                                                ->select('redSocial.*','SocialTipo.*')
                                                                ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                                                                ->get();
                                                              
                                                        $lastRedes=count($Redes);
                                                        $countRedes=1;
                                                        foreach ($Redes as $Red)
                                                            { //start foreach redes 
                                                                if($lastRedes!=$countRedes){
                                                                   $Json=$Json.'{
                                                                                 "socialTipo_Id":"'.$Red->idSocialTipo.'",
                                                                                 "sociallurl":"'.$Red->redSocialurl.'",
                                                                                 "socialTipoNombre":"'.$Red->socialTipoNombre.'",
                                                                                 "socialTipoDescripcion":"'.$Red->socialTipoDescripcion.'"
                                                                                },'; 
                                                                }else{
                                                                   $Json=$Json.'{
                                                                                 "socialTipo_Id":"'.$Red->idSocialTipo.'",
                                                                                 "sociallurl":"'.$Red->redSocialurl.'",
                                                                                 "socialTipoNombre":"'.$Red->socialTipoNombre.'",
                                                                                 "socialTipoDescripcion":"'.$Red->socialTipoDescripcion.'"
                                                                                }'; 
                                                                }



                                                              $countRedes++;  
                                                            } //end for each redes
                                                              $Json=$Json.'],
                                                                            "images":[';   
                                                     $Imgs= DB::table('Img')
                                                                ->join('Ubicacion','Ubicacion.ubicacionId','=','Img.idUbicacion')
                                                                ->select('Img.*')
                                                                ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                                                                ->get(); 
                                                     $lastImgs=count($Imgs);
                                                     $countImgs=1;
                                                     foreach ($Imgs as $imagen){//foreach images
                                                        if($lastImgs!=$countImgs){
                                                             $Json=$Json.'{
                                                                            "img_Id":"'.$imagen->imgId.'",
                                                                            "imageurl":"'.$imagen->imgUrl.'"
                                                                          },';
                                                        }else{
                                                             $Json=$Json.'{
                                                                            "img_Id":"'.$imagen->imgId.'",
                                                                            "imageurl":"'.$imagen->imgUrl.'"
                                                                          }';
                                                        }
                                                        $countImgs++;
                                                     }//end foreach Imgs                                                 
                                                    $Json=$Json.'],
                                                    "keywords":[';

                                                    $KeyWords= DB::table('Keyword')
                                                                    ->join('ubicacion_keyword','ubicacion_keyword.idKeyword','=','Keyword.keywordId')
                                                                    ->join('Ubicacion','Ubicacion.ubicacionId','=','ubicacion_keyword.idUbicacion')
                                                                    ->select('Keyword.*')
                                                                    ->where('Ubicacion.ubicacionId','=',$place->ubicacionId)
                                                                    ->get(); 
                                                                    
                                                     $lastKeywords=count($KeyWords);
                                                     $countKeyword=1;
                                                     foreach ($KeyWords as $keyword)//foreach keywords
                                                     {
                                                     if($lastKeywords!=$countKeyword){
                                                            $Json=$Json.'{
                                                                    "keyword_Id":"'.$keyword->keywordId.'",
                                                                    "keywordNombre":"'.$keyword->keywordNombre.'",
                                                                    "keywordDescripcion":"'.$keyword->keywordDescripcion.'"
                                                                  },'; 
                                                     }else{
                                                            $Json=$Json.'{
                                                                     "keyword_Id":"'.$keyword->keywordId.'",
                                                                     "keywordNombre":"'.$keyword->keywordNombre.'",
                                                                     "keywordDescripcion":"'.$keyword->keywordDescripcion.'"
                                                                  }';
                                                     }
                                                     $countKeyword++;
                                                    }//end for eachkeywords
                                                     $Json=$Json.']';   
                                    }

                                    if($countplaces==$cantidadplaces){
                                           $Json = $Json."}";                                  
                                    }else if(($countplaces!=$cantidadplaces)&&($cantidadplaces>0)){
                                           $Json = $Json."},";
                                    }

                                  
                                $countplaces++;
                                }   //end places                       
                        $Json=$Json.']';

      
                $Json = $Json."}";
                echo $Json;
            } //end funcion categoria

    
}
