<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{ config('app.name')}}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200..1000&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{!! asset('theme/css/sb-admin-2.min.css') !!}">
    @yield('link')
    <style>
        body {
                font-family: 'Cairo', sans-serif;
                background-color: #f0f0f0;
            }

            a { 
                text-decoration: none !important; 
                color: black;
            }

            ol, ul, menu {
                list-style: decimal !important;
                padding-right: 2rem !important;
            }

            ul, menu {
                list-style: inside !important;
                padding-right: 2rem !important;
            }

            input[type=file] {
                position: absolute !important;
                width: 100% !important;
                height: 100% !important;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                opacity: 0;
                cursor: pointer;
            }

            .input-title {
                width: 100%;
                padding: 30px;
                background: rgba(255,255,255,0.2);
                border: 2px dashed rgba(255,255,255,0.2);
                text-align: center;
                transition: background 0.3s ease-in-out;
            }

            .file-area:hover .input-title {
                background: rgba(255,255,255,0.1);
            }

            input[type=file] + .input-title {
                border-color: #f0f0f0;
                background-color: #f0f0f0;
            }
    </style>
    @yield('style')
     <!-- Scripts -->
      {{-- @vite(['resources/css/app.css', 'resources/js/app.js']) --}}
  </head>
  <body dir="rtl" style="text-align: right">
    <div>
      @include('partials.navbar')
      <main class="py-4 mb-5">
        <div class="container">
          <div class="row">
            @yield('alerts.success')
            @yield('content')

          </div>
        </div>

      </main>
      @include('partials.footer')
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/quill@2.0.0/dist/quill.min.js"></script>

      <!-- ckeditor -->
      {{-- <script src="https://cdn.ckeditor.com/ckeditor5/35.0.1/classic/ckeditor.js"></script> --}}
      {{-- <script src="https://cdn.ckeditor.com/ckeditor5/47.2.0/ckeditor5.umd.js"></script> --}}

      <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
      {{-- pusher --}}
      <script src="https://js.pusher.com/8.4.0/pusher.min.js"></script>
      <script>

        // Enable pusher logging - don't include this in production
        Pusher.logToConsole = true;

        var pusher = new Pusher('d4c9215c95ca96863f26', {
          cluster: 'mt1'
        });

        var channel = pusher.subscribe('my-channel');
        channel.bind('my-event', function(data) {
          alert(JSON.stringify(data));
        });
      </script>
      <script src="{!! asset('theme/js/sb-admin-2.min.js') !!}"></script>
    @yield('script')

  </body>
</html>