<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class UserController extends Controller
{
    //
    public function show_login()
    {
        return view('login');
    }

    public function authen(Request $request)
    {
        $username = $request->username;
        $password = $request->password;

        $md5password = md5($password);

        $user = User::where('name', $username)->where('password', $md5password)->first();

        if ($user) {
            Session::put('user', $user->name);
            return redirect('/companies')->with('message', 'Login Success.')->with('status', 'success');
        } else {
            return redirect()->back()->with('message', 'Invalid Username or Password.')->with('status', 'danger');
        }
    }

    public function logout()
    {
        Session::flush();
        return redirect('/login')->with('message', 'Logout Success.')->with('status', 'success');
    }
}
