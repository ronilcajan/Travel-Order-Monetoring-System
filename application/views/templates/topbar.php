<?php
$query1 = $this->db->query("SELECT * FROM system_info WHERE id=1");
$info = $query1->row();
?>

<nav class="navbar navbar-default navbar-static-top m-b-0">
    <div class="navbar-header">
        <a class="navbar-toggle font-20 hidden-sm hidden-md hidden-lg " href="javascript:void(0)" data-toggle="collapse"
            data-target=".navbar-collapse">
            <i class="fa fa-bars"></i>
        </a>
        <div class="top-left-part">
            <a class="logo" href="<?= site_url() ?>">
                <b>
                    <img src="<?= $info->login_bg ? site_url('assets/uploads/').$info->login_bg : site_url('assets/img/rontech-white.png') ?>"
                        alt="home" width="30" />
                </b>
                <span class="font-bold">
                    <?= empty($info->acronym) ? 'ABM SYSTEM' : $info->acronym ?>
                </span>
            </a>
        </div>
        <ul class=" nav navbar-top-links navbar-left hidden-xs">
            <li>
                <a href="javascript:void(0)" class="sidebartoggler font-20 waves-effect waves-light"><i
                        class="icon-arrow-left-circle"></i></a>
            </li>
        </ul>
        <ul class="nav navbar-top-links navbar-right pull-right" id="notif">
            <!-- <li class="dropdown">
                <a class="dropdown-toggle waves-effect waves-light font-20" data-toggle="dropdown"
                    href="javascript:void(0);">
                    <i class="icon-bell"></i>
                    <span class="badge badge-xs badge-danger count"></span>
                </a>
                <ul class="dropdown-menu mailbox animated bounceInDown" id="notification-msg"></ul>
            </li> -->
            <li class="dropdown">
                <a class="dropdown-toggle waves-effect waves-light font-20" data-toggle="dropdown"
                    href="javascript:void(0);">
                    <i class="icon-settings"></i>
                </a>
                <ul class="dropdown-menu dropdown-tasks animated slideInUp">
                    <li>
                        <a href="<?= site_url('admin/attempts') ?>"><i class="fa fa-flag"></i> Login
                            Attempts</a>
                    </li>
                    <li>
                        <a href="<?= site_url('admin/history') ?>"><i class="fa fa-globe"></i> System
                            History</a>
                    </li>
                    <li>
                        <a href="<?= site_url('auth/logout') ?>" class="text-danger"><i class="fa fa-power-off"></i>
                            Logout</a>
                    </li>
                </ul>
            </li>
        </ul>

    </div>
</nav>