<?php

namespace App\Http\Controllers;

use App\Models\Company;
use App\Models\Product;
use Illuminate\Http\Request;

class CompanyController extends Controller
{
    //
    public function index()
    {
        $companies_show = Company::where('is_hide', 0)->get();
        $companies_hide = Company::where('is_hide', 1)->get();

        return view('companies.companies', compact('companies_show', 'companies_hide'));
    }

    public function show($id)
    {
        $company = Company::where('id', $id)->first();
        $products = Product::where('company_id', $id)->get();
        return view('companies.company', compact('company', 'products'));
    }

    public function hide_company($id)
    {
        $company = Company::where('id', $id)->first();

        if ($company) {

            $company->update([
                'is_hide' => 1
            ]);

            Product::where('company_id', $id)->update(['is_hide' => 1]);

            return redirect('companies')->with('message', 'Change Status Success.')->with('status', 'success');
        } else {
            return redirect('companies')->with('message', 'Dont Have This Company.')->with('status', 'danger');
        }
    }

    public function show_company($id)
    {
        $company = Company::where('id', $id)->first();

        if ($company) {

            $company->update([
                'is_hide' => 0
            ]);

            return redirect('companies')->with('message', 'Change Status Success.')->with('status', 'success');
        } else {
            return redirect('companies')->with('message', 'Dont Have This Company.')->with('status', 'danger');
        }
    }

    public function create()
    {
        return view('companies.create');
    }

    public function store(Request $request)
    {
        Company::create([
            'name' => $request->name,
            'tel' => $request->tel,
            'email' => $request->email
        ]);

        return redirect('company/create')->with('message', 'Create Success.')->with('status', 'success');
    }

    public function edit($id)
    {
        $company = Company::where('id', $id)->first();
        return view('companies.edit', compact('company'));
    }

    public function update(Request $request, $id)
    {
        $company = Company::where('id', $id);

        $company->update([
            'name' => $request->name,
            'tel' => $request->tel,
            'email' => $request->email
        ]);

        return redirect()->back()->with('message', 'Update Success.')->with('status', 'success');
    }

    public function delete($id)
    {
        $company = Company::where('id', $id)->where('is_hide', 1)->first();

        if ($company) {
            $company->delete();
            return redirect('companies')->with('message', 'Delete Success.')->with('status', 'success');
        } else {
            return redirect('companies')->with('message', 'Error Cant Delete.')->with('status', 'danger');
        }
    }
}
