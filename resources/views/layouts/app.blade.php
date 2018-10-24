<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel - React_JS</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet" type="text/css" />
        <link href="css/app.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>                       
        @yield('content')
        <script type="text/javascript" src="js/app.js"></script>
    </body>
</html>