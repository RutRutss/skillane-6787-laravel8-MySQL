@extends('layouts.layout')

@section('title', 'Company Page')

@section('main')

    <div class="container d-flex align-items-center pt-3 pb-3 border-bottom">
        <h1 class="me-3">Company</h1>
        <a href="" class="btn btn-success me-auto">New Company</a>
        <div class="d-flex align-items-center">
            <div class="me-3 fw-bold">Hello, {{ session('user') }}</div>
            <a href="{{ route('logout') }}" class="btn btn-danger">Logout</a>
        </div>
    </div>

    <div class="container">
        @if ($company)
            <div class="card text-center">
                <div class="card-header">
                    <h2>{{ $company->name }}</h2>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Email : {{ $company->email }}</h5>
                    <p class="card-text">Telephone : {{ $company->tel }}</p>
                    <p class="fw-bold {{ $company->is_hide == 0 ? 'text-success' : 'text-danger' }}">
                        {{ $company->is_hide == 0 ? 'Active' : 'Hide' }}</p>

                    <h4>Product of {{ $company->name }}</h4>
                    <div class="d-flex justify-content-center flex-wrap">
                        @foreach ($products as $product)
                            <div class="card m-2" style="width: 18rem;">
                                <img src="{{ $product->img }}" class="img-fruid">
                                <div class="card-body">
                                    <h5 class="card-title">{{ $product->name }}</h5>
                                    <p class="card-text mb-1">{{ $product->gtin }}</p>
                                    <p class="card-text mb-1">{{ $product->desc }}</p>
                                    <p class="card-text mb-1">Gross Weight : {{ $product->weight_gross }}
                                        {{ $product->weight_unit }}</p>
                                    <p class="card-text mb-1">Net Weight : {{ $product->weight_net }}
                                        {{ $product->weight_unit }}</p>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="card-footer text-body-secondary">
                    Since : {{ $company->created_at }}
                </div>
            </div>
        @endif
    </div>


@endsection
