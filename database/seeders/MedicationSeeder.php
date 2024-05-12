<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Medication;

class MedicationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $medications = [
            [
                'name' => 'Medicine A',
                'description' => 'Description for Medicine A',
                'quantity' => 100,
                'buying_price' => 10.50,
                'selling_price' => 15.00,
                'total_price' => 100 * 10.50,
                'discount' => 0,
                'lot_number' => 'ABC123',
                'expiry_date' => '2024-12-31',
                'manufacture_date' => '2024-01-01',
                'category_idcategory' => 1, 
            ],

        ];

        foreach ($medications as $medicationData) {
            Medication::create($medicationData);
        }
    }
}
