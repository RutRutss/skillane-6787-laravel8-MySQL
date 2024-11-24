@extends('layouts.layout')

@section('title', 'Create Product Page')

@section('main')

    <div class="container d-flex align-items-center pt-3 pb-3 border-bottom">
        <h1 class="me-3">Create Product</h1>
        <a href="{{ route('products') }}" class="me-auto">Back to Products</a>
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
        <form action="{{ route('product.store') }}" method="POST">
            @csrf
            <div class="mb-3">
                <label for="" class="form-label">Name</label>
                <input type="text" class="form-control" name="name">
            </div>
            <div class="mb-3">
                <label for="" class="form-label">gtin</label>
                <input type="text" class="form-control" name="gtin">
            </div>
            <div class="mb-3">
                <label for="" class="form-label">desc</label>
                <textarea name="desc" id="" cols="30" rows="5" class="form-control"></textarea>
            </div>
            <div class="mb-3">
                <label for="" class="form-label">weight_gross</label>
                <input type="number" class="form-control" name="weight_gross">
            </div>
            <div class="mb-3">
                <label for="" class="form-label">weight_net</label>
                <input type="number" class="form-control" name="weight_net">
            </div>
            <div class="mb-3">
                <label for="" class="form-label">weight_unit</label>
                <input type="text" class="form-control" name="weight_unit">
            </div>
            <div class="mb-3">
                <label for="" class="form-label">img</label>
                <input type="text" class="form-control" name="img">
            </div>
            <div class="mb-3">
                <label for="" class="form-label">company_id </label>
                <select class="form-select" aria-label="Default select example" name="company_id">
                    @foreach ($companies as $company)
                        <option value="{{ $company->id }}">{{ $company->id . ' | ' . $company->name }}</option>
                    @endforeach
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>


    </div>


@endsection
