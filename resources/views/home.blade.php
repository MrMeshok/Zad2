@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Авторы
                    @auth
                        @if ($isAdmin)
                            <a id="add_book" class="btn btn-primary">Создать автора</a>
                            <form method="POST" class="hidden" action="{{ route('register') }}">
                                @csrf

                                <div class="form-group row">
                                    <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>

                                    <div class="col-md-6">
                                        <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                        @error('name')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                                    <div class="col-md-6">
                                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                                        @error('email')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                                    <div class="col-md-6">
                                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                        @error('password')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>

                                    <div class="col-md-6">
                                        <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                                    </div>
                                </div>

                                <div class="form-group row mb-0">
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                            {{ __('Register') }}
                                        </button>
                                    </div>
                                </div>
                            </form>
                        @endif
                    @endauth
                </div>
                <div class="card-body">
                    @foreach ($authors as $author)
                        <div class="user">
                            <div class="name">{{$author->name}}</div>
                            <div class="email">{{$author->email}}</div>
                            <a class="btn btn-primary" href="/library/{{$author->id}}">Книги автора</a>
                            @auth
                                @if ($isAdmin)
                                    <a class="btn btn-primary edit_book">Редактировать</a>
                                    <a class="btn btn-danger" href="del_author/{{$author->id}}">Удалить</a>
                                    <form class="hidden" action="edit" method="POST">
                                        @csrf
                                        <input type="hidden" name="id" value="{{$author->id}}"><br>
                                        <input required type="text" name="name" value="{{$author->name}}"><br>
                                        <input required type="text" name="email" value="{{$author->email}}"><br>
                                        <input type="submit" id="submit_enter" value="Редактировать"><br>
                                    </form>
                                @endif
                            @endauth
                            <hr>
                        </div>
                    @endforeach
                    {{ $authors->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
