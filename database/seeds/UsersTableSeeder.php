<?php

use Illuminate\Database\Seeder;
<<<<<<< HEAD
use Illuminate\Support\Str;
use TCG\Voyager\Models\Role;
use TCG\Voyager\Models\User;
=======
use App\Role;
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
>>>>>>> origin

class UsersTableSeeder extends Seeder
{
    /**
<<<<<<< HEAD
     * Auto generated seed file.
=======
     * Run the database seeds.
>>>>>>> origin
     *
     * @return void
     */
    public function run()
    {
<<<<<<< HEAD
        if (User::count() == 0) {
            $role = Role::where('name', 'admin')->firstOrFail();

            User::create([
                'name'           => 'Admin',
                'email'          => 'admin@admin.com',
                'password'       => bcrypt('password'),
                'remember_token' => Str::random(60),
                'role_id'        => $role->id,
            ]);
        }
=======
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
>>>>>>> origin
    }
}
