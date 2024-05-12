<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Customer;

class CustomerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $customers = [
            [
                'first_name' => 'John',
                'last_name' => 'Doe',
                'phone_number' => '1234567890',
                'email' => 'john@example.com',
                'address' => '123 Main St',
            ],
            [
                'first_name' => 'Jane',
                'last_name' => 'Doe',
                'phone_number' => '0987654321',
                'email' => 'jane@example.com',
                'address' => '456 Elm St',
            ],
        ];

        foreach ($customers as $customerData) {
            Customer::create($customerData);
        }
    }
}
