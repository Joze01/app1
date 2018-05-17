

@section('content')

{!!Form::open(['route'=>'keyword.store','method'=>'POST'])!!}
		<div class="form-group">
		{!!Form::label('ID:')!!}
		{!!Form::text('idkeyword')!!}
	</div>
			<div class="form-group">
		{!!Form::label('Nombre')!!}
		{!!Form::text('nombrekeyword')!!}
	</div>
		
	<div class="form-group">
		{!!Form::label('Descripcion')!!}
		{!!Form::text('descripcionkeyword')!!}
	</div>

	{!!Form::submit('Registrar')!!}

	{!!Form::close()!!}	


@stop