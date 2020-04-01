@extends('plantilla.plantilla')

@section('titulo', 'Confirmar eliminacion')

@section('contenido')
<div class="container py-5">
    <h1>¿Desea eliminar el registro de {{ $agenda->nombre }} {{ $agenda->apellidos }}?</h1>

<form method="POST" action="{{ route('agenda.destroy', $agenda->id) }}">
    @method('DELETE')
    @csrf
    <button type="submit" class="redondo btn btn-danger">
        <i class="fas fa-trash-alt"> Eliminar </i>
    </button>
    <a href="{{ route('cancelar') }}" class="redondo btn btn-secondary">
        <i class="fas fa-ban"></i>Cancelar
    </a>
</form>
</div>

@include('plantilla.footer', ['container' => 'container'])

@endsection
