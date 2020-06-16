@extends('layouts.app')

@section('content')
    <div class="authered">
        <div class="container">
            @include('includes.messages')
            <div class="card text-white bg-dark mb-3">
            <h5 class="card-header">{{ $aid->donation_name}}</h5>
                <div class="card-body">
                <p class="card-text">{{  $aid->donation_description }}</p>
                    <table class="table table-bordered table-dark">
                        <thead>
                          <tr>
                            <th scope="col">Donor : {{$donor->name}}</th>
                            <th scope="col">Amount : {{$aid->donation_amount}}</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>Group : {{ $aid->aid_group}}</td>
                            <td>Channel : {{$aid->payment_method}}</td>
                          </tr>
                          <tr>
                            <td>Status : {{ $aid->donation_status }}</td>
                            <td>Deadline : {{$aid->apply_deadline}}</td>
                          </tr>
                          <tr>
                            <td colspan="2">Requirements : {{$aid->applicant_requirements}}</td>
                          </tr>
                        </tbody>
                      </table>
                      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">Apply</button>
                </div>
              </div>

            <!-- Modal -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                    <h5 class="modal-title text-center" id="exampleModalLongTitle">{{$group->group_name}} application</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    </div>
                    <div class="modal-body">
                        <div class="bg-light">
                            @if ($user->id !== $aid->user_id)
                            <div class="card text-white bg-secondary mb-3">
                                <div class="card-header"><h5>Applicant Info</h5></div>
                                <div class="card-body">
                                    <p class="card-text">Name : {{$user->name}}</p>
                                    <hr>
                                    <p class="card-text">Email : {{$user->email}}</p>
                                </div>
                            </div>
                            <hr>    
                            @endif
                            
                            <div class="card text-white bg-success mb-3">
                                <div class="card-header"><h5>Donation Info</h5></div>
                                <div class="card-body">
                                    <div class="card-text">Name : {{$aid->donation_name}}</div><hr>
                                    <div class="card-text">Description : {{$aid->donation_description}}</div><hr>
                                    <div class="card-text">Requirements : {{$aid->applicant_requirements}}</div><hr>
                                    <div class="card-text">Amount : {{$aid->donation_amount}}</div><hr>
                                    <div class="card-text">Transaction via : {{$aid->payment_method}}</div><hr>
                                    <div class="card-text">Deadline : {{$aid->apply_deadline}}</div><hr>
                                </div>
                            </div>
                            @if ($user->id !== $aid->user_id )
                               <div class="card bg-info mb-3">
                                <div class="card-header"><h6>Application Info</h6></div>
                                <div class="card-body">
                                    <div class="card-text">
                                        {!! Form::open(['action' => 'ApplyController@apply', 'method' => 'POST', 'class' => 'border border-light p-5']) !!}
                                        {{ Form::hidden('user', $user->id) }}
                                        {{ Form::hidden('aid', $aid->id) }}
                                        {{ Form::hidden('group', $aid->donor_id) }}
                                        <div class="form-group ">
                                            {{ Form::label('text', 'Requirements', ['class' => 'control-label']) }}
                                            {{ Form::textarea('text', '', ['class' => 'form-control ', 'placeholder' => 'Why do you meet our requirements?', 'rows' => '3', ]) }}
                                        </div><hr>
                                        <div class="form-group">
                                            {{ Form::label('phone','Phone Number', ['class' => 'control-label']) }}
                                            {{ Form::tel('phone', '', ['class' => 'form-control mb-4', 'placeholder' => 'Phone Number']) }}
                                        </div><hr>
                                        <div class="form-group">
                                            {{ Form::label('mpesa','Payment Via', ['class' => 'control-label']) }}
                                            {{Form::select('payment', ['mpesa' => 'Mpesa'], 'mpesa', ['class' => 'browser-default custom-select mb-4'])}}
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
                            @endif

                               
                        </div>
                    </div>
                    <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
                </div>
            </div>

        </div>
    </div>
@endsection