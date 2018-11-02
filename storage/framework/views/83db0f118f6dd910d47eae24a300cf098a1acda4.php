<!doctype html>
<html lang="<?php echo e(app()->getLocale()); ?>">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel - React_JS</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet" type="text/css" />
        <link href="<?php echo e(asset('css/app.css')); ?>" rel="stylesheet" type="text/css"/>
        <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
        
    </head>
    <body>          
        <div class="container">
            <?php echo $__env->yieldContent('content'); ?>
        </div>                    
        <script type="text/javascript" src="<?php echo e(asset('js/app.js')); ?>"></script>
    </body>
</html>
