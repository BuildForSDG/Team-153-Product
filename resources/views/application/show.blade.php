@extends('layouts.app')

@section('content')
    <div class="authered">
        <div class="container">
            @include('includes.messages')
            <div>
                <div>
                <h5 class=" text-center" id="exampleModalLongTitle">My {{$group->group_name}} application</h5>
                </div>
                <div>
                    <div class="bg-light">
                        <div class="card text-white bg-secondary mb-3">
                            <div class="card-header"><h5>Applicant Info</h5></div>
                            <div class="card-body">
                                <p class="card-text">Name : {{$user->name}}</p>
                                <hr>
                                <p class="card-text">Email : {{$user->email}}</p>
                            </div>
                        </div>
                        <hr>
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

                        <div class="card text-white bg-info mb-3">
                            <div class="card-header"><h5>My Application Info</h5></div>
                            <div class="card-body">
                                <div class="card-text">Description : {{ $application->requirements}}</div><hr>
                                <div class="card-text">Payment Via : {{ $application->channel}}</div><hr>
                                <div class="card-text">Payment Account : {{ $application->account}}</div><hr>
                                <div class="card-text">Submitted on : {{ $application->created_at}}</div><hr>
                                <div class="card-text">Progress : {{ $application->status}}</div><hr>
                            </div>
                        </div>    
                    </div>
                </div>
            </div>

        </div>
    </div>
@endsection