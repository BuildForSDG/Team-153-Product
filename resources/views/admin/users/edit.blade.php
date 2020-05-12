<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                <div class="card-header">Edit {{ $user->name }}</div>
    
                    <div class="card-body">

                    <form action="{{ route('admin.users.update', $user) }}" method="POST" >
                        @csrf
                        {{ method_field('PUT') }}
                        @foreach ($roles as $role)
                            <div class="form-check">
                                <input type="checkbox" name="roles[]" value="{{ $role->id }}">
                                <label for="{{ $role->name }}">
                                    {{ $role->name }}
                                </label>
                            </div>                            
                        @endforeach
                        <button class="btn btn-primary" type="submit">
                            Update
                        </button> 
                    </form>                                             
                    </div>                    
                </div>
            </div>
        </div>
    </div>
</body>
</html>

