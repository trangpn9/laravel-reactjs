<?php $__env->startSection('content'); ?>
    <div id="edit" class="col-lg-12" data-id=<?php echo $id; ?>></div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts/app', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>