@extends('welcome');

@section('content')
<thead>
	<th>nombre</th>
	<th>Descripcion</th>
</thead>
<tbody>
	@foreach($Ubicaciones as $ubicacion)
		<td>{{$key->keywordNombre}}</td>
		<td>{{$key->keywordDescripcion}}</td>
	@endforeach
</tbody>



@stop

