<?php


namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use Illuminate\Validation\ValidationException;


class CategoryController extends Controller
{
    public function store(Request $request)
    {

        try {
            $request->validate([
                'category_type' => 'required',   
            ]);
        
            $category = Category::create($request->all());
        
            return response()->json(['message' => 'Category created successfully'], 200);
        
        } catch (ValidationException $e) {
            return response()->json(['message' => $e->validator->errors()], 422);
        
        } catch (\Exception $e) {
            return response()->json(['message' => 'Category created failed!'], 400);
        }
}

}
