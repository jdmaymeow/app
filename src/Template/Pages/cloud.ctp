<?php $this->layout = 'CakeBootstrap.default'; ?>
<?php $this->start('subtitle_for_page'); ?>
Cms
<?php $this->end() ?>

<!-- Begin page content -->
<main id="main-container">

    <!-- Content -->
    <div class="container-fluid text-center">


        <div class="col-md-12">
            <h1><i class="fa fa-diamond text-amethyst"></i></h1>
            <h1>MayMeow Cloud Platform</h1>

            <?= $this->Html->link('Log in', ['plugin' => 'CakeAuth', 'controller' => 'Users', 'action' => 'login'], ['class' => 'btn btn-primary']) ?>
            <?= $this->Html->link('Create account', ['plugin' => 'CakeAuth', 'controller' => 'Users', 'action' => 'add'], ['class' => 'btn btn-default']) ?>

            <h2>Current features</h2>
            <ul class="list-inline">
                <li>User authentication and authorization</li>
                <li>Content management</li>
                <li>Storage <label class="label label-success">Pro</label></li>
            </ul>
        </div>


    </div>
    <!-- Content -->

</main>
<!-- End page Content -->
