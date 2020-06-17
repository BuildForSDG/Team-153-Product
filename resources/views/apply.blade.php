@extends('layouts.app')

@section('content')
<div class="authered">
    <div class="container">
        <h2>Apply for Financial Aid</h2>
        {!! Form::open(['action' => 'ApplyController@apply', 'method' => 'POST', 'class' => 'bg-info']) !!}

        <div class="form-group row">
            {{ Form::label('title', 'Title', ['class' => 'col']) }}
            {{ Form::text('title', null, ['class' => 'form-control col']) }}
        </div>
        <div class="form-group row">
            {{ Form::label('title', 'Title', ['class' => 'col']) }}
            {{ Form::text('title', null, ['class' => 'form-control col']) }}
        </div>
        <div class="form-group row">
            {{ Form::label('title', 'Title', ['class' => 'col']) }}
            {{ Form::text('title', null, ['class' => 'form-control col']) }}
        </div>
        {!! Form::close() !!}  
    </div>
    
</div>
@endsection