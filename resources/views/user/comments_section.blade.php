@includewhen(!count($contents->comments) ,'alerts.empty', ['msg'=>'لا توجد أي تعليقات بعد'])

<div class="commentBody">
    @foreach($contents->comments as $comment)
        <div class="card mt-5 mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-2">
                        <img src="{{$comment->user->profile_photo_url}}" width="150px" class="rounded-full"/>
                    </div>
                    <div class="col-10">
                        @can('delete-post', $comment)
                            <form method="POST" action="{{ route('comment.destroy', $comment->id) }}" onsubmit="return confirm('هل أنت متأكد أنك تريد حذف التعليق هذا؟')">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="float-left"><i class="far fa-trash-alt text-danger fa-lg"></i>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="red" class="bi bi-trash-fill" viewBox="0 0 16 16">
                                    <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5M8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5m3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0"/>
                                    </svg>
                                </button>
                            </form>
                        @endcan
                    
                        <p class="mt-3 mb-2"><strong>{{$comment->user->name}}</strong></p> 
                        <i class="far fa-clock"></i> <span class="comment_date text-secondary">{{$comment->created_at->diffForHumans()}}</span>
                        <a href="{{ route('post.show', $comment->Post->slug) }}#comments"><p class="mt-3" >{{\Illuminate\Support\Str::limit($comment->body , 250) }}</p></a>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
</div>