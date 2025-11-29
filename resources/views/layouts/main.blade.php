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
    <style>
        body{
            font-family: 'Cairo',sans-serif;
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
            @yield('content')

          </div>
        </div>

      </main>
      @include('partials.footer')
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
    @yield('script')
  </body>
</html>