<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Author;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rule;
use App\Actions\Fortify\PasswordValidationRules;

class HomeController extends Controller
{
    use PasswordValidationRules;
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

    public function AdminCreateUser(Request $request)
    {
        if (Auth::user()->isAdmin()) {
            $valid = $request->validate([
                'name' => ['required', 'string', 'max:255'],
                'email' => [
                    'required',
                    'string',
                    'email',
                    'max:255',
                    Rule::unique(Author::class),
                ],
                'password' => $this->passwordRules(),
            ]);

            Author::create([
                'name' => $request->input('name'),
                'role_id' => 2,
                'email' => $request->input('email'),
                'password' => Hash::make($request->input('password')),
            ]);
        }

        return redirect()->back();
    }

    public function AdminEditUser(Request $request)
    {
        if (Auth::user()->isAdmin()) {
            $valid = $request->validate([
                'id' => 'required|integer|exists:authors,id',
                'name' => ['required', 'string', 'max:255'],
                'email' => [
                    'required',
                    'string',
                    'email',
                    'max:255'
                ]
            ]);

            $author = Author::find($request->input('id'));
            $author->name = $request->input('name');
            $author->email = $request->input('email');
            $author->save();
        }

        return redirect()->back();
    }
}
