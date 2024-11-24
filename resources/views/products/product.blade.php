@extends('layouts.layout')

@section('title', 'Product Page')

@section('main')

    <div class="container d-flex align-items-center pt-3 pb-3 border-bottom">
        <h1 class="me-3">All Products</h1>
        <a href="" class="btn btn-success me-auto">New Product</a>
        <a href="{{ route('products') }}" class="btn btn-primary me-auto">All Products</a>
        <div class="d-flex align-items-center">
            <div class="me-3 fw-bold">Hello, {{ session('user') }}</div>
            <a href="{{ route('logout') }}" class="btn btn-danger">Logout</a>
        </div>
    </div>

    <div class="container d-flex justify-content-center">
        @if ($product)
            <div class="card m-2 w-25">
                <img src="{{ $product->img }}" class="img-fruid">
                <div class="card-body">
                    <h5 class="card-title">{{ $product->name }}</h5>
                    <p class="card-text mb-1">{{ $product->c_name }}</p>
                    <p class="card-text mb-1">{{ $product->gtin }}</p>
                    <p class="card-text mb-1">{{ $product->desc }}</p>
                    <p class="card-text mb-1">Gross Weight : {{ $product->weight_gross }}
                        {{ $product->weight_unit }}</p>
                    <p class="card-text mb-1">Net Weight : {{ $product->weight_net }}
                        {{ $product->weight_unit }}</p>
                </div>
            </div>
        @endif
    </div>


@endsection
