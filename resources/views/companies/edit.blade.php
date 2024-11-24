@extends('layouts.layout')

@section('title', 'Edit Company Page')

@section('main')

    <div class="container d-flex align-items-center pt-3 pb-3 border-bottom">
        <h1 class="me-3">Edit Company</h1>
        <a href="{{ route('companies') }}" class="me-auto">Back to Companies</a>
        <div class="d-flex align-items-center">
            <div class="me-3 fw-bold">Hello, {{ session('user') }}</div>
            <a href="{{ route('logout') }}" class="btn btn-danger">Logout</a>
        </div>
    </div>

    <div class="d-flex w-100 justify-content-center">
        @if (session('message'))
            <div class="alert alert-{{ session('status') }} w-50 mt-3 me-3">{{ session('message') }}</div>
        @endif
    </div>

    <div class="container pt-3">
        <form action="{{ route('company.update', ['id' => $company->id]) }}" method="POST">
            @csrf
            <div class="mb-3">
                <label for="" class="form-label">Company Name</label>
                <input type="text" class="form-control" name="name" value="{{ $company->name }}">
            </div>
            <div class="mb-3">
                <label for="" class="form-label">Company Telephone</label>
                <input type="text" class="form-control" name="tel" value="{{ $company->tel }}">
            </div>
            <div class="mb-3">
                <label for="" class="form-label">Company Email</label>
                <input type="email" class="form-control" name="email" value="{{ $company->email }}">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

@endsection
