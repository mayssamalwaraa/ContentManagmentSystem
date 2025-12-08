@includewhen(!count($contents->posts), 'alerts.empty',['msg' => 'لا توجد أي مشاركات بعد'])

@foreach($contents->posts as $post)
    <div class="row mb-2">
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-12">
                        @if (Auth::check())
                            {{-- @can('delete-post', $post) --}}
                                <form method="POST" action="{{ route('post.destroy', $post->id) }}" onsubmit="return confirm('هل أنت متأكد أنك تريد حذف المنشور هذا؟')">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="float-left">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="red" class="bi bi-trash-fill" viewBox="0 0 16 16">
                                    <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5M8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5m3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0"/>
                                    </svg>
                                    </button>
                                </form>
                            {{-- @endcan --}}

                            {{-- @can('edit-post', $post) --}}
                            <form method="GET" action="{{ route('post.edit', $post->id) }}">
                                @csrf
                                @method('PATCH')
                                <button type="submit" class="float-left"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="green" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z"/>
                                </svg></button>
                            </form>
                            {{-- @endcan --}}

                        @endif
                        <img style="float:right" src="{{ $post->user->profile_photo_url }}" width="50px" class="rounded-full"/>
                        <p class="mt-2 me-3" style="display:inline-block;"><strong>{{$post->user->name}}</strong></p>   
                        <div class="row mt-2">
                            <div class="col-3">
                                <i class="far fa-clock"></i> <span class="text-secondary">{{$post->created_at->diffForHumans()}}</span>
                            </div>
                            <div class="col-3">
                                <i class="fa-solid fa-align-justify"></i> <span class="text-secondary">{{$post->category->title}}</span>
                            </div>
                            <div class="col-3">
                                <i class="fa-solid fa-comment"></i> <span class="text-secondary">{{$post->comments->count()}} تعليقات</span>
                            </div>
                        </div>
                        <h4 class="my-2 h4" ><a href="{{ route('post.show', $post->slug)}}">{{$post->title}}</a></h4>
                        <p class="card-text mb-2">{!! Str::limit($post->body , 200) !!}</p>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endforeach