@extends('layouts.app')

@section('content')
<section class="authered">
    <div class="container">
        @include('includes.messages')
        <div>
            <h2>My applications</h2>
        </div>
        <table class="table table-responsive" style="display: table">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Reference</th>
                <th scope="col">Group</th>
                <th scope="col">Aid</th>
                <th scope="col">Status</th>
                <th scope="col">Created</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>
                @if ($applications == '')
                    <tr>
                        <td align="center" colspan="6">No Applications Made</td>    
                    </tr> 
                @endif
                @foreach ($applications as $application)
                @if ($user->id == $application->user_id)
                    <tr>
                        <td scope="row">{{ $application->id }}</td>
                        <td>{{ $group->group_name }}</td>
                        <td>{{ $donation->donation_name }}</td>
                        <td>{{ $application->status }}</td>
                        <td>{{ $application->created_at }}</td>                        
                        <td><a href="/application/{{ $application->id }}" class="btn btn-info">View</a></td>
                    </tr>
                @endif                    
                @endforeach
            </tbody>
        </table>
        {{ $applications->links() }}
        <hr>
        <div>
            <div>
                <h2>My Donations</h2>
                <table class="table table-responsive" style="display: table">
                    <thead class="thead-dark">
                      <tr>
                        <th scope="col">Reference</th>
                        <th scope="col">Name</th>
                        <th scope="col">Status</th>
                        <th scope="col">Created</th>
                        <th scope="col">Action</th>
                      </tr>
                    </thead>
                    <tbody>
                        @if ($donations == '')
                            <tr>
                                <td align="center" colspan="5">No Donations made</td>    
                            </tr> 
                        @endif
                        @foreach ($donations as $donation)
                        @if ($user->id == $donation->user_id)
                            <tr>
                                <td scope="row">{{ $donation->id }}</td>
                                <td>{{ $donation->donation_name}}</td>
                                <td>{{ $donation->donation_status }}</td>
                                <td>{{ $donation->created_at }}</td>                        
                                <td><a href="/donation/{{ $donation->id }}" class="btn btn-info">View</a></td>
                            </tr>
                        @endif                            
                        @endforeach
                    </tbody>
                </table>
                {{ $donations->links() }}
            </div>

        </div>
    </div>
</section>
    
@endsection