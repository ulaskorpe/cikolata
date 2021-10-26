<?php

namespace Database\Seeders;

use App\Models\Product;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
          ['silver','Donec vitae arcu pretium, condimentum risus eu, ornare nibh. Sed aliquam in nibh at semper.',2,30.00,1],
          ['gold','Praesent at euismod dolor. Nam eget tempor dui. Curabitur scelerisque metus dui,.',5,50.00,1],
          ['platinum','Sed aliquam in nibh at semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra',12,100.00,1],

        ];

        foreach ($data as $item){
            $product = new Product();
            $product->name = $item[0];
            $product->description = $item[1];
            $product->duration = $item[2];
            $product->price = $item[3];
            $product->is_active = $item[4];
            $product->save();

        }
    }
}
