<?php

namespace App\Http\Controllers;

use App\Models\Company;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        $products_show = Product::join('companies', 'companies.id', '=', 'products.company_id')
            ->where('products.is_hide', 0)
            ->select('companies.*', 'products.*', 'products.name as p_name', 'companies.name as c_name')
            ->get();

        $products_hide = Product::join('companies', 'companies.id', '=', 'products.company_id')
            ->where('products.is_hide', 1)
            ->select('companies.*', 'products.*', 'products.name as p_name', 'companies.name as c_name')
            ->get();

        return view('products.products', compact('products_show', 'products_hide'));
    }

    public function hide_product($gtin)
    {
        $product = Product::where('gtin', $gtin)->first();

        $product->update(['is_hide' => 1]);

        return redirect('/products')->with('message', 'Hide Success.')->with('status', 'success');
    }

    public function show_product($gtin)
    {
        $product = Product::where('gtin', $gtin)->first();

        $company = Company::where('id', $product->company_id)->first();

        if ($company->is_hide == 0) {
            $product->update(['is_hide' => 0]);

            return redirect('/products')->with('message', 'Show Success.')->with('status', 'success');
        } else {
            return redirect('/products')->with('message', 'Can Not Show.')->with('status', 'danger');
        }
    }

    public function show($gtin)
    {
        $product = Product::where('gtin', $gtin)
            ->join('companies', 'companies.id', '=', 'products.company_id')
            ->select('products.*', 'companies.name as c_name')
            ->first();

        return view('products.product', compact('product'));
    }

    public function delete($gtin)
    {
        $product = Product::where('gtin', $gtin)->where('is_hide', 1)->first();

        if ($product) {
            $product->delete();

            return redirect('/products')->with('message', 'Delete Success.')->with('status', 'success');
        } else {
            return redirect('/products')->with('message', 'Can Not Delete.')->with('status', 'danger');
        }
    }

    public function new_product()
    {
        $companies = Company::all();
        return view('products.create', compact('companies'));
    }

    public function store(Request $request)
    {

        Product::create([
            'name' => $request->name,
            'img' => $request->img,
            'gtin' => $request->gtin,
            'desc' => $request->desc,
            'weight_gross' => $request->weight_gross,
            'weight_net' => $request->weight_net,
            'weight_unit' => $request->weight_unit,
            'company_id' => $request->company_id,
        ]);

        return redirect('/product/new')->with('message', 'Create Success.')->with('status', 'success');
    }

    public function edit($gtin)
    {
        $product = Product::where('gtin', $gtin)->first();

        return view('products.edit', compact('product'));
    }

    public function update(Request $request, $gtin)
    {
        $product = Product::where('gtin', $gtin)->first();
        $product->update([
            'name' => $request->name,
            'img' => $request->img,
            'gtin' => $request->gtin,
            'desc' => $request->desc,
            'weight_gross' => $request->weight_gross,
            'weight_net' => $request->weight_net,
            'weight_unit' => $request->weight_unit,
        ]);

        return redirect()->route('product.edit', ['gtin' => $product->gtin])->with('message', 'Update Success.')->with('status', 'success');
    }
}
