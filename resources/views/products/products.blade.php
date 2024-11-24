@extends('layouts.layout')

@section('title', 'Companies Page')

@section('main')

    <div class="container d-flex align-items-center pt-3 pb-3 border-bottom">
        <h1 class="me-3">All Products</h1>
        <a href="{{ route('product.new') }}" class="btn btn-success me-auto">New Product</a>
        <a href="{{ route('companies') }}" class="btn btn-primary me-auto">All Company</a>
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

    <div class="container d-flex align-items-start">

        {{-- สินค้าที่เปิดใช้งาน --}}
        <div class="d-flex flex-wrap w-50 p-3">
            <h3 class="w-100">Active Products</h3>
            @if ($products_show)
                @foreach ($products_show as $product_show)
                    <div class="card m-2" style="width: 18rem; height: auto;">
                        <img src="{{ $product_show->img }}" class="img-fruid">
                        <div class="card-body">
                            <h5 class="card-title">{{ $product_show->p_name }}</h5>
                            <p class="card-text mb-1">{{ $product_show->c_name }}</p>
                            <p class="card-text mb-1">{{ $product_show->gtin }}</p>
                            <p class="card-text mb-1">{{ $product_show->desc }}</p>
                            <p class="card-text mb-1">Gross Weight : {{ $product_show->weight_gross }}
                                {{ $product_show->weight_unit }}</p>
                            <p class="card-text mb-1">Net Weight : {{ $product_show->weight_net }}
                                {{ $product_show->weight_unit }}</p>
                            <div class="d-flex align-items-center">
                                <a href="{{ route('product', ['gtin' => $product_show->gtin]) }}"
                                    class="btn btn-primary me-1">View</a>
                                <a href="{{ route('product.edit', ['gtin' => $product_show->gtin]) }}"
                                    class="btn btn-warning me-1">Edit</a>
                                <a href="{{ route('product.hide', ['gtin' => $product_show->gtin]) }}">Hide</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>


        {{-- สินค้าที่ปิดใช้งาน --}}
        <div class="d-flex flex-wrap w-50 p-3">
            <h3 class="w-100">Hide Products</h3>
            @if ($products_hide)
                @foreach ($products_hide as $product_hide)
                    <div class="card m-2 text-secondary" style="width: 18rem; height: auto;">
                        <img src="{{ $product_hide->img }}" class="img-fruid">
                        <div class="card-body">
                            <h5 class="card-title">{{ $product_hide->p_name }}</h5>
                            <p class="card-text mb-1">{{ $product_hide->c_name }}</p>
                            <p class="card-text mb-1">{{ $product_hide->gtin }}</p>
                            <p class="card-text mb-1">{{ $product_hide->desc }}</p>
                            <p class="card-text mb-1">Gross Weight : {{ $product_hide->weight_gross }}
                                {{ $product_hide->weight_unit }}</p>
                            <p class="card-text mb-1">Net Weight : {{ $product_hide->weight_net }}
                                {{ $product_hide->weight_unit }}</p>
                            <div class="d-flex align-items-center">
                                <a href="" class="btn btn-secondary me-1">View</a>
                                <a href="" class="btn btn-secondary me-1">Edit</a>
                                <a href="{{ route('product.show', ['gtin' => $product_hide->gtin]) }}"
                                    class="text-secondary me-1">Show</a>
                                <a href="{{ route('product.delete', ['gtin' => $product_hide->gtin]) }}"
                                    class="text-danger">Del</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>



    </div>


@endsection
