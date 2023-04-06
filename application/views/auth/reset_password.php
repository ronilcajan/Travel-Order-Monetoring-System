<div class="login-box">
    <div class="white-box">
        <form class="form-horizontal form-material text-light" id="loginform"
            action="<?= site_url('auth/reset_password/') . $code ?>" method="POST">
            <h3 class="box-title text-white text-center">
                <img class="img img-fluid" src="<?= site_url('assets/img/rontech-trans.png') ?>" width="100">
            </h3>
            <h3 class="box-title m-b-20 text-white"><?php echo lang('reset_password_heading'); ?></h3>
            <?php if (!empty($message)) : ?>
            <div
                class="alert alert-<?= $this->session->flashdata('success') ? $this->session->flashdata('success') : 'danger' ?> alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button> <?= $message; ?>
            </div>
            <?php endif ?>
            <div class="form-group ">
                <div class="col-xs-12">
                    <?php echo form_input($new_password); ?>
                    <span toggle="#new" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                </div>
            </div>
            <div class="form-group">
                <div class="col-xs-12">
                    <?php echo form_input($new_password_confirm); ?>
                    <span toggle="#new_confirm" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                </div>
            </div>
            <?php echo form_input($user_id); ?>
            <?php echo form_hidden($csrf); ?>
            <div class="form-group text-center m-t-20">
                <div class="col-xs-12">
                    <button class="btn btn-info btn-lg btn-block text-uppercase waves-effect waves-light"
                        type="submit">Change</button>
                </div>
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