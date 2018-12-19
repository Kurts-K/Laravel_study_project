<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Page;
use App\People;
use App\Service;
use App\Portfolio;
use DB;
use Mail;

class IndexController extends Controller {
    public function execute(Request $request) {



    	if($request->isMethod('post') ) {

    		$messages = [
    				'required' => "Поле :attribute обязательно к заполнению",
    				'email' => "Поле :attribute должно соответсвовать email адресу"
    		];

    		$this->validate($request, [
    				'name'=>'required|max:255',
    				'email'=>'required|email',
    				'text'=>'required'], $messages);

    		$data = $request->all();

    		$result = Mail::send('site.email', ['data'=>$data], function($message) use ($data) {
    			$mail_admin = env('MAIL_ADMIN');

    			$message->from($data['email'], $data['name']);
    			$message->to($mail_admin)->subject('Question');	
    		});

    		if($result) {
    			return redirect()->route('home')->with('status', 'Emeil is send');
    		}


    	}








    	$pages = Page::all();
    	$peoples = People::all();
    	$services = Service::all();
    	$portfolios = Portfolio::all();
    	$tags = DB::table('portfolios')->distinct()->lists('filter');



    	$menu = array();

    	foreach ($pages as $page) {
    		$item = array('title'=>$page->name, 'alias'=>$page->alias);
    		array_push($menu, $item);
    	}

    	$item = array('title'=>'Services', 'alias'=>'service');
    	array_push($menu, $item);

    	$item = array('title'=>'Portfolio', 'alias'=>'portfolio');
    	array_push($menu, $item);

    	$item = array('title'=>'Team', 'alias'=>'team');
    	array_push($menu, $item);

    	$item = array('title'=>'Contact', 'alias'=>'contact');
    	array_push($menu, $item);

    	

    	return view('site.index', array(
    									'menu'=>$menu,
    									'pages'=>$pages,
    									'services'=>$services,
    									'portfolios'=>$portfolios,
    									'peoples'=>$peoples,
    									'tags'=>$tags,
										));

    }
}
