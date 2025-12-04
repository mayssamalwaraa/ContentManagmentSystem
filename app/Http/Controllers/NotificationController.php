<?php

namespace App\Http\Controllers;

use App\Models\Alert;
use App\Models\Notification;
use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NotificationController extends Controller
{
    public function index(){
        $someNotifications = Notification::where([
            ['user_id','!=',Auth::user()->id],
            ['post_userId','=',Auth::user()->id]
        ])
        ->orderBy('created_at','desc')
        ->limit(4)
        ->get();
        $data = [];
        foreach($someNotifications as $item){
            $data[] = [
            'user_name'=>User::findOrFail($item->user_id)->name,
            'user_image'=>User::findOrFail($item->user_id)->profile_photo_url,
            'post_title'=>Post::findOrFail($item->post_id)->title,
            'post_slug'=>Post::findOrFail($item->post_id)->slug,
            'date'=>$item->created_at->diffForHumans()

            ];

        }
        $alert = Alert::where('user_id',Auth::user()->id)->first();
        $alert->alert = 0;
        $alert->save();
        return response()->json(['someNotifications'=>$data]);
    }
    public function allNotification(){
        $notifications = Notification::where([
            ['user_id','!=',Auth::user()->id],
            ['post_userId','=',Auth::user()->id]
        ])
        ->orderBy('created_at','desc')
        ->paginate(10);
        $title= 'جميع الإشعارات';
        return view('notifications.show',compact('notifications','title'));
    }
}
