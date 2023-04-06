<div class="login-box">
    <div class="white-box">
        <form class="form-horizontal form-material text-light" id="loginform"
            action="<?= site_url('auth/forgot_password') ?>" method="POST">
            <h3 class="box-title text-white text-center">
                <img class="img img-fluid" src="<?= site_url('assets/img/rontech-trans.png') ?>" width="100">
            </h3>
            <div class="form-group ">
                <div class="col-xs-12">
                    <h3 class="text-white">Recover Password</h3>
                    <p class="text-muted">Enter your username and instructions will be sent to your email! </p>
                </div>
            </div>
            <?php if (!empty($message)) : ?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button> <?= $message; ?>
            </div>
            <?php endif ?>
            <div class="form-group ">
                <div class="col-xs-12">
                    <input class="form-control" type="text" required="" name="identity" placeholder="Username">
                </div>
            </div>
            <div class="form-group text-center m-t-20">
                <div class="col-xs-12">
                    <button class="btn btn-primary btn-lg btn-block text-uppercase waves-effect waves-light"
                        type="submit">Reset</button>
                </div>
            </div>
            <div class="col-sm-12 text-center">
                <p>Go back to login? <a href="<?= site_url('auth/login') ?>" class="text-primary m-l-5"><b>Login
                            Here</b></a></p>
            </div>
            <div class="form-group m-b-0">
                <div class="col-sm-12 text-center">
                    <p>Powered by: <a href="#" class="text-primary m-l-5"><b> <?= $info->powered_b ?></b></a></p>
                </div>
            </div>
            <div class="form-group m-b-0">
                <div class="col-sm-12 text-center">
                    <p class="text-primary m-l-5"><b>COPYRIGHT WARNING!!!</b></p>
                    <p style="font-size: 12px;" class="text-justify">This software and its accompanying hardware, logos,
                        images, documents and its other intellectual properties are protected by copyright and may not
                        be
                        reproduced in any manner without the express written permission of "<?= $info->powered_b ?>".
                    </p>
                </div>
            </div>
        </form>
    </div>
</div>