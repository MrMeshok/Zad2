<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Author;
use App\Models\Book;
use Illuminate\Support\Facades\Auth;

class BookController extends Controller
{
    public function library($author_id)
    {
        $user = Auth::user();
        $profile = Author::where('id', $author_id)->get()->first();
        $books = Book::where('author_id', $author_id)->simplePaginate(5);

        if ($profile and $books) {
            return view('books', ['profile' => $profile, 'books' => $books, 'user' => $user]);
        } else {
            return redirect('');
        }
    }

    private function save(Book $book, Request $request, $edit=False)
    {
        if (!$edit) {
            $book->author_id = $request->input('author_id');
        }
        $book->title = $request->input('title');
        $book->text = $request->input('text');
        $book->save();
    }

    public function add(Request $request)
    {
        $valid = $request->validate([
            'title' => 'required|min:5|max:100',
            'text' => 'required|min:5|max:300',
            'author_id' => 'required|integer|exists:authors,id',
        ]);

        if (Auth::user()->isAdmin()) {
            $book = new Book();
            $this->save($book, $request);
        } elseif (Auth::user()->id == $request->input('author_id')) {
            $book = new Book();
            $this->save($book, $request);
        }

        return redirect()->back();
    }

    public function edit(Request $request)
    {
        $valid = $request->validate([
            'title' => 'required|min:5|max:100',
            'text' => 'required|min:5|max:300',
            'id' => 'required|integer|exists:books,id',
        ]);
        $book = Book::where('id', $request->input('id'))->where('author_id', Auth::user()->id)->first();
        if ($book) {
            $this->save($book, $request, True);
        }
        

        return redirect()->back();
    }

    public function del($book_id)
    {
        if (Auth::user()->isAdmin()) {
            $book = Book::where('id', $book_id)->delete();
        } else {
            $book = Book::where('id', $book_id)->where('author_id', Auth::user()->id)->delete();
        }
        return redirect()->back();
    }
}
