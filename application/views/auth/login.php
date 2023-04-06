<div class="login-box">
    <div class="white-box">
        <form class="form-horizontal form-material text-light" id="loginform" action="<?= site_url('auth/login') ?>"
            method="POST">
            <h3 class="box-title text-white text-center">
                <img class="img img-fluid m-b-10"
                    src="<?= $info->login_bg ? site_url('assets/uploads/').$info->login_bg : site_url('assets/img/rontech-white.png') ?>"
                    width="150"></br>
                Sign In
            </h3>
            <?php if (!empty($message)) : ?>
            <div
                class="alert alert-<?= $this->session->flashdata('success') ? $this->session->flashdata('success') : 'danger' ?> alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button> <?= $message; ?>
            </div>
            <?php endif ?>
            <div class="form-group ">
                <div class="col-xs-12">
                    <input class="form-control" type="text" required="" name="identity" placeholder="Username">
                </div>
            </div>
            <div class="form-group">
                <div class="col-xs-12">
                    <input class="form-control" type="password" required="" name="password" id="pass"
                        placeholder="Password">
                    <span toggle="#pass" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-12">
                    <div class="checkbox checkbox-primary pull-left p-t-0">
                        <input id="checkbox-signup" type="checkbox" name="remember" value="1">
                        <label for="checkbox-signup"> Remember me </label>
                    </div>
                    <!-- <a href="<?= site_url('auth/forgot_password') ?>" class="text-white pull-right"><i
                            class="fa fa-lock m-r-5"></i> Forgot pwd?</a> -->
                </div>
            </div>
            <div class="form-group text-center m-t-40">
                <div class="col-xs-12">
                    <button class="btn btn-primary btn-lg btn-block text-uppercase waves-effect waves-light"
                        type="submit">Log In</button>
                </div>
            </div>
            <div class="form-group m-b-40">
                <div class="col-sm-12 text-center">
                    <p>Powered by: <a href="#" class="text-white m-l-5"><b> <?= $info->powered_b ?></b></a></p>
                </div>
            </div>
            <!-- <div class="form-group m-b-0">
                <div class="col-sm-12 text-center">
                    <p class="text-primary m-l-5"><b>COPYRIGHT WARNING!!!</b></p>
                    <p style="font-size: 12px;" class="text-justify">This software and its accompanying hardware, logos,
                        images, documents and its other intellectual properties are protected by copyright and may not
                        be
                        reproduced in any manner without the express written permission of "<?= $info->powered_b ?>".
                    </p>
                </div>
            </div> -->
        </form>
    </div>
</div>