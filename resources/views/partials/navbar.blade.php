<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand pl-5" href="{{ url('/') }}">{{ config('app.name') }}</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
            <li class="nav-item me-5" style="list-style: none">
                <a class="nav-link active" aria-current="page" href="{{ url('/') }}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
                <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293z"/>
                <path d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293z"/>
                </svg> الصفحة الرئيسية</a>
            </li>

            <li class="nav-item dropdown" style="list-style: none">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark-fill" viewBox="0 0 16 16">
                    <path d="M4 0h5.293A1 1 0 0 1 10 .293L13.707 4a1 1 0 0 1 .293.707V14a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2m5.5 1.5v2a1 1 0 0 0 1 1h2z"/>
                    </svg>
                    الصفحات

                </a>

                <div class="dropdown-menu text-right">
                    {{-- @foreach($pages as $page)
                        <a class="dropdown-item" href="{{ route('page.show',$page->slug ) }}">{{ $page->title }}</a>
                    @endforeach --}}
                </div>
            </li>
        </ul>

        <ul class="navbar-nav mx-auto">
            @auth
                <li class="nav-item" style="list-style: none">
                    <a class="nav-link" href="{{ route('post.create')}}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-square-fill" viewBox="0 0 16 16">
  <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zm6.5 4.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3a.5.5 0 0 1 1 0"/>
</svg><i class="fa fa-plus fa-fw"></i>موضوع جديد</a>
                </li>
            @endauth
        
            <!-- Search Box -->
            <li style="list-style: none">
                <form class="d-flex" method="post" action="{{ route('search')}}">
                    @csrf
                    <input class="form-control ms-2" name="keyword" type="search" placeholder="ابحث عن منشور..." aria-label="Search">
                    <button class="btn btn-outline-light" type="submit"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
                    </svg></button>
                </form>        
            </li>
        </ul>
<ul class="navbar-nav mr-auto">
    <div class="topbar" style="z-index:1">
        @auth
                        <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow alert-dropdown mx-1" style="list-style: none">
                <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fas fa-bell fa-fw fa-lg"></i>
                    <!-- Counter - Alerts -->
                    <span class="badge badge-danger badge-counter notif-count" data-count="0">0</span>
                </a>
                <!-- Dropdown - Alerts -->
                <div class="dropdown-list dropdown-menu dropdown-menu-right text-right mt-2 mr-auto"
                    aria-labelledby="alertsDropdown">
                    <div class="alert-body">
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <div class="ml-3">
                                <div class="icon-circle bg-primary">
                                    <i class="fas fa-file-alt text-white"></i>
                                </div>
                            </div>
                            <div>
                                <div class="small text-gray-500">منذ 5 دقائق</div>
                                <span>Ahmad hasan وضع تعليقًا على المنشور <b>دردشة حول تعلم البرمجة</b></span>
                            </div>
                        </a>
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <div class="ml-3">
                                <div class="icon-circle bg-primary">
                                    <i class="fas fa-file-alt text-white"></i>
                                </div>
                            </div>
                            <div>
                                <div class="small text-gray-500">منذ 5 دقائق</div>
                                <span>Ahmad hasan وضع تعليقًا على المنشور <b>دردشة حول تعلم البرمجة</b></span>
                            </div>
                        </a>
                    </div>
                    <a class="dropdown-item text-center small text-gray-500" href="#">عرض جميع الإشعارات</a>
                </div>
            </li>
        @endauth

    </div>
                    @guest
                    <li class="nav-item">
                        <a href="{{route('login')}}" class="nav-link">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-left" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M10 3.5a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-2a.5.5 0 0 1 1 0v2A1.5 1.5 0 0 1 9.5 14h-8A1.5 1.5 0 0 1 0 12.5v-9A1.5 1.5 0 0 1 1.5 2h8A1.5 1.5 0 0 1 11 3.5v2a.5.5 0 0 1-1 0z"/>
                            <path fill-rule="evenodd" d="M4.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H14.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708z"/>
                            </svg>
                            {{__('تسجيل دخول')}}</a>
                    </li>
                    @if(Route::has('register'))
                    <li class="nav-item">
                        <a href="{{route('register')}}" class="nav-link">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill-add" viewBox="0 0 16 16">
                            <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0m-2-6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
                            <path d="M2 13c0 1 1 1 1 1h5.256A4.5 4.5 0 0 1 8 12.5a4.5 4.5 0 0 1 1.544-3.393Q8.844 9.002 8 9c-5 0-6 3-6 4"/>
                            </svg>
                            {{__('إنشاء حساب')}}</a>

                    </li>
                    @endif
                    @else
                    <li class="nav-item dropdown justify-content-left" style="list-style: none">
                        <a href="#" id="navbarDropdown" class="nav-link" data-bs-toggle="dropdown" >
                            <img  class="h-8 w-8 rounded-full object-cover" src="{{ Auth::user()->profile_photo_url}}" alt="{{Auth::user()->name}}">
                        </a>
                    <div class="dropdown-menu dropdown-menu-left px-2 text-right mt-2">
                        @can('update-books')
                        <a href="{{ route('admin.index')}}" class="dropdown-item">لوحة الإدارة</a>
                            
                        @endcan
                        <hr>
                            <div class="pt-4 pb-1 border-t border-gray-200">
                                <div class="flex items-center px-4">
                                    {{-- @if (Laravel\Jetstream\Jetstream::managesProfilePhotos())
                                        <div class="shrink-0 me-3">
                                            <img class="size-10 rounded-full object-cover" src="{{ Auth::user()->profile_photo_url }}" alt="{{ Auth::user()->name }}" />
                                        </div>
                                    @endif --}}

                                    <div>
                                        <div class="font-medium text-base text-gray-800">{{ Auth::user()->name }}</div>
                                        {{-- <div class="font-medium text-sm text-gray-500">{{ Auth::user()->email }}</div> --}}
                                    </div>
                                </div>

                                <div class="mt-3 space-y-1">
                                    <!-- Account Management -->
                                    {{-- <x-responsive-nav-link href="{{ route('profile.show') }}" :active="request()->routeIs('profile.show')">
                                        {{ __('الملف الشخصي') }}
                                    </x-responsive-nav-link> --}}
                                    <a href="{{ route('profile.show')}}" class="dropdown-item">الملف الشخصي</a>
                                    <hr>


                                    @if (Laravel\Jetstream\Jetstream::hasApiFeatures())
                                        <x-responsive-nav-link href="{{ route('api-tokens.index') }}" :active="request()->routeIs('api-tokens.index')">
                                            {{ __('API Tokens') }}
                                        </x-responsive-nav-link>
                                    @endif

                                    <!-- Authentication -->
                                    <form method="POST" action="{{ route('logout') }}" x-data>
                                        @csrf

                                        <x-responsive-nav-link href="{{ route('logout') }}"
                                                    onclick="event.preventDefault();
                                                    this.cloest('form').submit()">
                                            {{ __('تسجيل الخروج') }}
                                        </x-responsive-nav-link>
                                    </form>

                                    <!-- Team Management -->
                                    @if (Laravel\Jetstream\Jetstream::hasTeamFeatures())
                                        <div class="border-t border-gray-200"></div>

                                        <div class="block px-4 py-2 text-xs text-gray-400">
                                            {{ __('Manage Team') }}
                                        </div>

                                        <!-- Team Settings -->
                                        <x-responsive-nav-link href="{{ route('teams.show', Auth::user()->currentTeam->id) }}" :active="request()->routeIs('teams.show')">
                                            {{ __('Team Settings') }}
                                        </x-responsive-nav-link>

                                        @can('create', Laravel\Jetstream\Jetstream::newTeamModel())
                                            <x-responsive-nav-link href="{{ route('teams.create') }}" :active="request()->routeIs('teams.create')">
                                                {{ __('Create New Team') }}
                                            </x-responsive-nav-link>
                                        @endcan

                                        <!-- Team Switcher -->
                                        @if (Auth::user()->allTeams()->count() > 1)
                                            <div class="border-t border-gray-200"></div>

                                            <div class="block px-4 py-2 text-xs text-gray-400">
                                                {{ __('Switch Teams') }}
                                            </div>

                                            @foreach (Auth::user()->allTeams() as $team)
                                                <x-switchable-team :team="$team" component="responsive-nav-link" />
                                            @endforeach
                                        @endif
                                    @endif
                            </div>
                        </div>
                    </div>
                </li>
            @endguest
        </ul>

    </div>
  </div>
</nav>