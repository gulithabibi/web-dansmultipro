<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class JobController extends Controller
{
    public function index($page=1)
    {
        //$page =$request->input('page');
        $page=$page==""?$page=1:$page;

        $total_page =count(json_decode(Http::get("http://dev3.dansmultipro.co.id/api/recruitment/positions.json")))/10;

        $positions =json_decode(Http::get("http://dev3.dansmultipro.co.id/api/recruitment/positions.json?page=".$page));
        $pagination=["total_page"=>$total_page,"current_page"=>$page];

        return view("home",[
            "title"=>"Home",
            "positions"=>$positions,
            "pagination"=>$pagination
        ]);
    }

    public function detail($id)
    {
        $data =json_decode(Http::get("http://dev3.dansmultipro.co.id/api/recruitment/positions/$id"));
        return view("detail",[
            "title"=>"Detail",
            "data"=>$data
        ]);
    }

    public function search(Request $request)
    {
        $job_desc =$request->input('job_desc');
        $location = $request->input('location');
        $is_fulltime = $request->input('is_fulltime');

        $positions =json_decode(Http::get("http://dev3.dansmultipro.co.id/api/recruitment/positions.json?description=".$job_desc."&location=".$location));
        $pagination=["total_page"=>count($positions)/10,"current_page"=>1];

        if($is_fulltime=="on"){
            $temp=array();
            foreach($positions as $item){
                if($item->type=="Full Time"){
                    array_push($temp,$item);
                }
            }
            $positions=$temp;
        }

        return view("home",[
            "title"=>"Home",
            "positions"=>$positions,
            "pagination"=>$pagination
        ]);
    }
}
