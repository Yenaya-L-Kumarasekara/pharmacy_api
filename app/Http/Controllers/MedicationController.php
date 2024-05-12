<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Medication;
use Illuminate\Validation\ValidationException;

class MedicationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        try{
            $medications = Medication::with('category')->get();
            return response()->json($medications);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Failed to retrieve customer records!'], 400);
        }
    }
    
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        
            try{
                $request->validate([
                    'name' => 'required',
                    'quantity' => 'required',
                    'buying_price' => 'required',
                    'selling_price' => 'required',
                    'expiry_date' => 'required',
                    'manufacture_date' => 'required',
                    'category_idcategory' => 'required',
                ]);

                $quantity = $request->quantity;
                $buying_price = $request->buying_price;
                $total_price = $quantity * $buying_price;
                $request->merge(['total_price' => $total_price]);

                $medication = Medication::create($request->all());

                return response()->json(['message' => 'Medication record created successfully'], 200);
        
            } catch (ValidationException $e) {
                return response()->json(['message' => $e->validator->errors()], 422);
            } catch (\Exception $e) {
                return response()->json(['message' => 'Medication record created failed!'], 400);
            }
    }


    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        try{
            if($request->has('quantity') || $request->has('buying_price')){
                $medication = Medication::findOrFail($id);
                $quantity = $request->quantity ?? $medication->quantity;
                $buying_price = $request->buying_price ?? $medication->buying_price;
                $total_price = $quantity * $buying_price;
                $request->merge(['total_price' => $total_price]);
            }

            $medication = Medication::findOrFail($id);
            $medication->update($request->all());
            return response()->json($medication, 200);

        } catch (\Exception $e) {
            return response()->json(['message' => 'Medication record update failed!'], 400);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try{
            $medication = Medication::findOrFail($id);
            $medication->delete();
        return response()->json(['message' => 'Medication deleted successfully'],200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Medication record deleted failed!'], 400);
        }
    }
}
