@extends('layouts.app')

@section('content')
    <div class="authered">
        <div class="container">
            @include('includes.messages')
            <div class="card bg-info mb-3">
                <div class="card-header"><h6>Donation Info</h6></div>
                <div class="card-body">
                    <div class="card-text">
                        {!! Form::open(['action' => 'DonateController@donate', 'method' => 'POST', 'class' => 'border border-light p-5']) !!}
                        <div class="form-group">
                            {{ Form::label('group','I would like to make a donation for:', ['class' => 'control-label']) }}
                            {{Form::select('group', ['1' => 'Bursary', '4' => 'DonatIons', '2' => 'Grants', '3' => 'Scholarships'], null, ['placeholder' => 'Select a course','class' => 'browser-default custom-select mb-4'])}}
                        </div><hr>
                        <div class="form-group">
                            {{ Form::label('name','Name of this Donation:', ['class' => 'control-label']) }}
                            {{ Form::text('name', '', ['class' => 'form-control mb-4', 'placeholder' => 'Donation Name']) }}
                        </div><hr>
                        <div class="form-group">
                            {{ Form::label('description','Describe of this Donation:', ['class' => 'control-label']) }}
                            {{ Form::text('describe', '', ['class' => 'form-control mb-4', 'placeholder' => 'Donation description']) }}
                        </div><hr>
                        <div class="form-group ">
                            {{ Form::label('req', 'What must your benefitiary have?', ['class' => 'control-label']) }}
                            {{ Form::textarea('reg', '', ['class' => 'form-control ', 'placeholder' => 'Write benefitiary requirements', 'rows' => '3', ]) }}
                        </div><hr>
                        <div class="form-group">
                            {{ Form::label('pay','Payments will be Via', ['class' => 'control-label']) }}
                            {{Form::select('payment', ['mpesa' => 'Mpesa'], 'mpesa', ['class' => 'browser-default custom-select mb-4'])}}
                        </div><hr>
                        <div class="form-group">
                            {{ Form::label('amount','How much am I giving?', ['class' => 'control-label']) }}
                            {{ Form::number('amount', '', ['class' => 'form-control mb-4']) }}
                        </div><hr>
                        <div class="form-group">
                            {{ Form::label('deadline','When is the deadline?', ['class' => 'control-label']) }}
                            {{ Form::date('deadline', \Carbon\Carbon::now(), ['class' => 'form-control mb-4']) }}
                        </div><hr>
                        <div class="custom-control custom-checkbox mb-4">
                            {{Form::checkbox('agree', 1, null)}} I agree to AidPedia Terms and Contitions
                        </div><hr>
                        <div>
                            {{Form::submit('submit', ['class' => 'btn btn-warning btn-block'])}}
                        </div>

                        {!! Form::close() !!}  
                    </div><hr>
                </div>
            </div>
        </div>
    </div>
@endsection