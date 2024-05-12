<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use Illuminate\Validation\ValidationException;

class CustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        try{
            $customer = Customer::all();
            return response()->json($customer);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Failed to retrieve customer records!'], 400);
        }
    }
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        try {
            $request->validate([
                'first_name' => 'required',     
                'phone_number' => 'required',       
                'email' => 'unique:customer,email',              
            ]);
        
            $customer = Customer::create($request->all());
        
            return response()->json(['message' => 'Customer record created successfully'], 200);
        
        } catch (ValidationException $e) {
            return response()->json(['message' => $e->validator->errors()], 422);
        
        } catch (\Exception $e) {
            return response()->json(['message' => 'Customer record created failed!'], 400);
        }

    }
    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $customer = Customer::findOrFail($id);
        $customer->update($request->all());
        return response()->json($customer, 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Customer::findOrFail($id)->delete();
        return response()->json(['message' => 'Customer deleted successfully']);
    }
}
