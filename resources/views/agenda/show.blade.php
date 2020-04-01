@extends('plantilla.plantilla')

@section('titulo', 'Mostrar registro')

@section('contenido')

<div class="container">
     <br>
     @include('agenda.navuser')



<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
  <li class="breadcrumb-item "><a href="{{route('agenda.index')}}">Inicio</a></li>
    <li class="breadcrumb-item"><a>Mostrar el registro</a></li>
    <li class="breadcrumb-item active" aria-current="page">{{ $agenda->id }}</li>
  </ol>
</nav>
</div>


<form method='POST' action="{{ route('agenda.update', $agenda->id) }}">
    @method('PUT')
    @csrf 

<div class="container register">
    <div class="row">
        <div class="col-md-3 register-left">
            <img src="http://www.idaipqroo.org.mx/wp-content/uploads/2018/06/proteccion-de-datos-personales-791x1024.png" alt=""/>
            <h3>Bienvenid@</h3>
            <p>Por favor llena los datos correctamente en el sistema!</p>
                        
        </div>
        <div class="col-md-9 register-right">      
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <h3 class="register-heading">Mostrar Registro</h3>
                    <div class="row register-form">
                        <div class="col-md-6">                                        
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fa fa-user text-info"></i>
                                        </div>
                                    </div>
                                    <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre" required="" value="{{ $agenda->nombre }}" disabled>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fa fa-user-edit text-info"></i>
                                        </div>
                                    </div>
                                    <input type="text" class="form-control" id="apellidos" name="apellidos" placeholder="Apellidos" required="" value="{{ $agenda->apellidos }}" disabled>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fa fa-phone text-info"></i>
                                        </div>
                                    </div>
                                    <input class="form-control" type="number" name="telefono" placeholder="Telefono: 18491115555" id="telefono" value="{{ $agenda->telefono }}" disabled>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fa fa-mobile-alt text-info"></i>
                                        </div>
                                    </div>
                                    <input class="form-control" type="number" name="celular" placeholder="Celular: 18491115555" id="Celular" value="{{ $agenda->celular }}" disabled>
                                </div>
                            </div>
                                       
                            @if($agenda->sexo=='Masculino')
                                @php($hombre='checked')
                                @php($mujer='')
                            @else
                                @php($mujer='checked')
                                @php($hombre='')
                            @endif
                            <div class="form-group">
                                <div class="maxl">
                                    <label class="radio inline"> 
                                        <input type="radio" name="sexo" value="Masculino" {{ $hombre }} disabled>
                                        <span> Masculino </span> 
                                    </label>
                                    <label class="radio inline"> 
                                        <input type="radio" name="sexo" value="Femenino" {{ $mujer }} disabled>
                                        <span>Femenino </span> 
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fa  fa-at text-info"></i>
                                        </div>
                                    </div>
                                    <input type="email" name="email" class="form-control" placeholder="Email" value="{{ $agenda->email }}" disabled/>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fa fa-address-card text-info"></i>
                                        </div>
                                    </div>
                                    <input type="text" name="posicion" class="form-control" placeholder="Posición" value="{{ $agenda->posicion }}" disabled/>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fa fa-map-marker-alt text-info"></i>
                                        </div>
                                    </div> 
                                        @php($departamento=['Gerencia de TI', 'Auditoria TI', 'Contabilidad'])
                                        <select name='departamento' class="form-control" disabled>
                                            <option class="hidden" selected>Departamento</option>
                                            @foreach($departamento as $dep)

                                            @if($agenda->departamento == $dep)
                                                @php($seleccionado='selected')
                                            @else
                                                @php($seleccionado='')
                                            @endif
                                            <option  {{$seleccionado}}>{{ $dep }}</option>

                                            @endforeach
                                        </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fa  fa-dollar-sign text-info"></i>
                                        </div>
                                    </div>
                                    <input type="number" class="form-control" name="salario" placeholder="salario *" value="{{ $agenda->salario }}" disabled/>
                                </div>
                            </div>
                                        
                            <div class="form-group">
                                <label >Fecha de nacimiento</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">                                                    
                                        <div class="input-group-text">
                                            <i class="fa fa-calendar-alt text-info"></i>
                                        </div>
                                    </div>      
                                    <input type="date" name="fechadenacimiento" id="fechadenacimiento" min="1000-01-01"
                                                  max="3000-12-31" class="form-control" value="{{ $agenda->fecha_de_nacimiento }}" disabled>                                                   
                                </div>
                            </div>

                                <a href="{{ route('agenda.edit', $agenda->id) }}" class="redondo btn btn-success">
                                    <i class="fas fa-save"></i> Editar
                                </button>
                                    <a href="{{ route('cancelar') }}" class="redondo btn btn-danger">
                                        <i class="fas fa-ban"></i> Cancelar
                                    </a>
                        </div>
                    </div>
                </div>         
            </div>
        </div>
    </div>

</div>
            
</form>

@include('plantilla.footer', ['container' => 'container-fluid'])


@endsection