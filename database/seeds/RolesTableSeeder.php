<?php

use Illuminate\Database\Seeder;
<<<<<<< HEAD
use TCG\Voyager\Models\Role;
=======
use App\Role;
>>>>>>> origin

class RolesTableSeeder extends Seeder
{
    /**
<<<<<<< HEAD
     * Auto generated seed file.
     */
    public function run()
    {
        $role = Role::firstOrNew(['name' => 'admin']);
        if (!$role->exists) {
            $role->fill([
                'display_name' => __('voyager::seeders.roles.admin'),
            ])->save();
        }

        $role = Role::firstOrNew(['name' => 'user']);
        if (!$role->exists) {
            $role->fill([
                'display_name' => __('voyager::seeders.roles.user'),
            ])->save();
        }
=======
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Role::truncate();

        Role::create(['name' => 'admin']);
        Role::create(['name' => 'donor']);
        Role::create(['name' => 'applicant']);
>>>>>>> origin
    }
}
