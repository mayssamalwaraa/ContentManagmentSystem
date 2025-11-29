<?php

namespace Database\Seeders;

use App\Models\Permission;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PermisssionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $permission1 = Permission::create([
            'id' => 1,
            'name' => 'add-post',
            'desc' => 'إضافة المواضيع'
        ]);
        $permission2 = Permission::create([
            'id' => 2,
            'name' => 'edit-post',
            'desc' => 'تعديل المواضيع'
            
        ]);
        $permission3 = Permission::create([
            'id' => 3,
            'name' => 'delete-post',
            'desc' => 'حذف المواضيع'
            
        ]);
        $permission4 = Permission::create([
            'id' => 4,
            'name' => 'add-user',
            'desc' => 'إضافة المستخدمين'
            
        ]);
        $permission5 = Permission::create([
            'id' => 5,
            'name' => 'edit-user',
            'desc' => 'تعديل بيانات المستخدمين'
            
        ]);
        $permission6 = Permission::create([
            'id' => 6,
            'name' => 'delete-user',
            'desc' => 'حذف المستخدمين'
        ]);
    }
}
