<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Category;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categories = [
            ['category_type' => 'Category A'],
            ['category_type' => 'Category B'],
            ['category_type' => 'Category C'],
        ];

        foreach ($categories as $categoryData) {
            Category::create($categoryData);
        }
    }
}
