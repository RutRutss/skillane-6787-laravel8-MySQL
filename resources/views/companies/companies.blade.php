@extends('layouts.layout')

@section('title', 'Companies Page')

@section('main')

    <div class="container d-flex align-items-center pt-3 pb-3 border-bottom">
        <h1 class="me-3">All Companies</h1>
        <a href="{{ route('company.create') }}" class="btn btn-success me-auto">New Company</a>
        <a href="{{ route('products') }}" class="btn btn-primary me-auto">All Product</a>
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

    <div class="container d-flex">

        {{-- บริษัทที่เปิดใช้งาน --}}
        <div class="d-flex flex-column w-50 p-3">
            @if ($companies_show)
                <h2 class="mb-2 text-success">Active Company</h2>
                @foreach ($companies_show as $company_show)
                    <div class="card mb-2 mt-1">
                        <div class="card-header fw-bold">
                            {{ $company_show->name }}
                        </div>
                        <div class="card-body d-flex align-items-center">
                            <p><strong>Tel.</strong> : {{ $company_show->tel }}</p>&nbsp;
                            <p class="me-auto"><strong>Email</strong> : {{ $company_show->email }}</p>
                            <a href="{{ route('company.view', ['id' => $company_show->id]) }}"
                                class="btn btn-primary me-2">View</a>
                            <a href="{{ route('company.edit', ['id' => $company_show->id]) }}"
                                class="btn btn-warning me-2">Edit</a>
                            <a href="{{ route('company.hide', ['id' => $company_show->id]) }}">Hide</a>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>

        {{-- บริษัทที่ปิดใช้งาน --}}
        <div class="d-flex flex-column w-50 p-3 ">
            @if ($companies_hide)
                <h2 class="mb-2 text-secondary">Hide Company</h2>
                @foreach ($companies_hide as $company_hide)
                    <div class="card mb-2 mt-1 text-secondary">
                        <div class="card-header fw-bold">
                            {{ $company_hide->name }}
                        </div>
                        <div class="card-body d-flex align-items-center">
                            <p><strong>Tel.</strong> : {{ $company_hide->tel }}</p>&nbsp;
                            <p class="me-auto"><strong>Email</strong> : {{ $company_hide->email }}</p>
                            <a href="{{ route('company.view', ['id' => $company_hide->id]) }}"
                                class="btn btn-secondary me-2">View</a>
                            <a href="{{ route('company.edit', ['id' => $company_hide->id]) }}"
                                class="btn btn-secondary me-2">Edit</a>
                            <a href="{{ route('company.show', ['id' => $company_hide->id]) }}" class="me-2">Show</a>
                            <a href="{{ route('company.delete', ['id' => $company_hide->id]) }}"
                                class="text-danger">Del</a>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>


    </div>


@endsection
