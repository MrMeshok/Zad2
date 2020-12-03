<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Author;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function authors()
    {
        if (Auth::user()) {
            $isAdmin = Auth::user()->isAdmin();
        } else {
            $isAdmin = False;
        }
        $authors = Author::simplePaginate(5);
        if ($authors) {
            return view('home', ['authors' => $authors, 'isAdmin' => $isAdmin]);
        } 
    }
    public function del_author($author_id)
    {
        if (Auth::user()->isAdmin()) {
            DB::statement('SET FOREIGN_KEY_CHECKS=0');
            $book = Author::where('id', $author_id)->delete();
            DB::statement('SET FOREIGN_KEY_CHECKS=1');
        }
        return redirect()->back();
    }
}
