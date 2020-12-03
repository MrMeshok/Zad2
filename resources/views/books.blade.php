@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    Книги пользователя {{$profile->name}}
                    @auth
                        @if ($user->id == $profile->id or $user->isAdmin())
                            <a id="add_book" class="btn btn-primary">Создать книгу</a>
                            <form class="hidden" action="add" method="POST">
                                @csrf
                                <input type="hidden" name="author_id" value="{{$profile->id}}"><br>
                                <input required placeholder="Заголовок" type="text" name="title"><br>
                                <textarea required placeholder="Текст книги" name="text" cols="60" rows="8"></textarea><br>
                                <input type="submit" id="submit_enter" value="Отправить"><br>
                            </form>
                        @endif
                    @endauth
                </div>
                <div class="card-body">
                    
                    @foreach ($books as $book)
                        <div class="user">
                            <div class="title">Заголовок: {{$book->title}}</div>
                            <div class="text">Текст: {{$book->text}}</div>
                            @auth
                                @if ($user->id == $profile->id or $user->isAdmin())
                                    <a class="btn btn-primary edit_book">Редактировать</a>
                                    <a class="btn btn-danger" href="del/{{$book->id}}">Удалить</a>
                                    <form class="hidden" action="edit" method="POST">
                                        @csrf
                                        <input type="hidden" name="id" value="{{$book->id}}"><br>
                                        <input required type="text" name="title" value="{{$book->title}}"><br>
                                        <textarea required name="text" cols="60" rows="8">{{$book->text}}</textarea><br>
                                        <input type="submit" id="submit_enter" value="Редактировать"><br>
                                    </form>
                                @endif
                            @endauth
                        </div>
                        <hr>
                    @endforeach
                    {{ $books->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
