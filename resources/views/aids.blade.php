@extends('layouts.app')

@section('content')
<section class="authered">    
    <div class="container">
        @include('includes.messages')
        <div>
            <h2>Financial Aids Available</h2>
        </div>
        <div class="row">
            <div class="col-md-6 text-left">
                Filter : 
                <a href="/aids/?aid_group=1">Bursary</a> 
                <a href="/aids/?aid_group=4">DonatIons</a> 
                <a href="/aids/?aid_group=2">Grants</a> 
                <a href="/aids/?aid_group=3">Scholarships</a> 
                <a href="/aids/">Reset</a>
            </div>
            <div class="col-md-6 text-right">
            <a href="{{ route('aids', ['aid_group'=>request('aid_group'), 'sort'=>'asc']) }}">Oldest</a>
            <a href="{{ route('aids', ['aid_group'=>request('aid_group'), 'sort'=>'desc']) }}">Newest</a>
                
            </div>
        </div>

        <div class="form-group">
            <input type="text" name="search" id="search" class="form-control" placeholder="Search..." />
        </div>
        
        <table class="table table-responsive">
            <thead class="thead-dark">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Details</th>
                <th scope="col">Amount</th>
                <th scope="col">Deadline</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>
                @foreach ($aids as $aid)
                    <tr>
                    <th scope="row">{{ $aid->id }}</th>
                        <td>{{ $aid->donation_name }}</td>
                        <td>{{ $aid->donation_description }}</td>
                        <td>{{ $aid->donation_amount }}</td>
                        <td>{{ $aid->apply_deadline }}</td>
                        <td><a href="/donation/{{ $aid->id }}" class="btn btn-info">View</a></td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        {{ $aids->links() }}
    </div>
</section>
    
@endsection