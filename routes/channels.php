    <?php

    use Illuminate\Support\Facades\Broadcast;

    // Broadcast::channel('my-private-channel.{id}', function ($user, $id) {
    //     return (int) $user->id === (int) $id;
    // });
    Broadcast::channel('real-notification.{userId}',function($user,$userId){
        return (int) $user->id === (int) $userId;
    });