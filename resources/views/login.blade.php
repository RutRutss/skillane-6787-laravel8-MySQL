@extends('layouts.layout')

@section('title', 'Login Page')

@section('main')

    <div class="container w-100 vh-100 d-flex justify-content-center align-items-center flex-column">
        @if (session('message'))
            <div class="alert alert-{{ session('status') }}">{{ session('message') }}</div>
        @endif
        <h1>Login</h1>
        <form action="{{ route('auth') }}" method="post">
            @csrf
            <div class="mb-3">
                <label for="">Username</label>
                <input type="text" name="username" id="" class="form-control">
            </div>
            <div class="mb-3">
                <label for="">Password</label>
                <input type="password" name="password" id="" class="form-control">
            </div>
            <input type="submit" value="LOGIN" class="btn btn-primary w-100">
        </form>
    </div>

@endsection
