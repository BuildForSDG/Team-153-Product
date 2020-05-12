<?php

use Illuminate\Database\Seeder;
use App\Role;
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::truncate();
        DB::table('role_user')->truncate();

        $adminRole = Role::where('name', 'admin')->first();
        $donorRole = Role::where('name', 'donor')->first();
        $applicantRole = Role::where('name', 'applicant')->first();

        $admin = User::create([
            'name' => 'admin',
            'email' => 'admin@aidpedia.com',
            'password' => Hash::make('password'),
            'phone' => '0711111111'
        ]);

        $donor = User::create([
            'name' => 'donor',
            'email' => 'don@aidpedia.com',
            'password' => Hash::make('password'),
            'phone' => '0722222222'
        ]);

        $applicant = User::create([
            'name' => 'applicant',
            'email' => 'applicant@aidpedia.com',
            'password' => Hash::make('password'),
            'phone' => '0733333333'
        ]);

        $admin->roles()->attach($adminRole);
        $donor->roles()->attach($donorRole);
        $applicant->roles()->attach($applicantRole);
    }
}
