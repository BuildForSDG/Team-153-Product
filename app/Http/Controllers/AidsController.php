<?php

namespace App\Http\Controllers;

use App\AidGroup;
use App\Donation;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

use function GuzzleHttp\Promise\all;

class AidsController extends Controller
{
    public function aids(){
        $aids = new Donation;

        if (request()->has('aid_group')) {
            $aids = $aids->where('aid_group', request('aid_group'));
        }
        if (request()->has('sort')) {
            $aids = $aids->orderBy('id', request('sort'));
        }

        $aids = $aids->paginate(5)->appends([
            'aid_group' => request('aid_group'),
            'id' => request('sort'),
        ]);

        return view('aids', compact('aids'));

    }

    public function search(Request $request)
    {
     if($request->ajax())
     {
      $output = '';
      $query = $request->get('query');
      if($query != '')
      {
       $data = DB::table('donations')
         ->where('donation_name', 'like', '%'.$query.'%')
         ->orWhere('donation_description', 'like', '%'.$query.'%')
         ->orderBy('id', 'desc')
         ->get();
         
      }
      else
      {
    //    $data = DB::table('donations')
    //      ->orderBy('id', 'desc')
    //      ->get();
      }
      $total_row = $data->count();
      if($total_row > 0)
      {
       foreach($data as $row)
       {
        $output .= '
        <tr>
         <th scope="row">'.$row->id.'</th>
         <td>'.$row->donation_name.'</td>
         <td>'.$row->donation_description.'</td>
         <td>'.$row->donation_amount.'</td>
         <td>'.$row->apply_deadline.'</td>
         <td><a href="/donation/'.$row->id.'" class="btn btn-info">View</a></td>
        </tr>
        ';
       }
      }
      else
      {
       $output = '
       <tr>
        <td align="center" colspan="5">No Data Found</td>
       </tr>
       ';
      }
      $data = array(
       'table_data'  => $output,
       'total_data'  => $total_row
      );

      echo json_encode($data);
     }
    }
    public function show($id){
        $aid = Donation::find($id);
        $user = Auth::user();
        $group = AidGroup::find($aid->aid_group);
        $donor = User::where('id', $aid->user_id)->first();
        return view('donation.show', ['aid' => $aid, 'user' => $user, 'group' => $group, 'donor' => $donor]);
    }
}
