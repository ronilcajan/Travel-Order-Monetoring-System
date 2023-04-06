<?php
$query = $this->db->query("SELECT * FROM system_info");
$info = $query->row();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php $this->load->view('templates/header') ?>
    <title><?= $title ?> | <?= $info->sname ?></title>
</head>

<body class="fix-header mini-sidebar">
    <!-- Preloader -->
    <div class="preloader">
        <div class="cssload-speeding-wheel"></div>
    </div>
    <div id="wrapper">
        <!-- ===== Top-Navigation ===== -->
        <?php $this->load->view('templates/topbar') ?>
        <!-- ===== Top-Navigation-End ===== -->

        <!-- ===== Left-Sidebar ===== -->
        <?php $this->load->view('templates/sidebar') ?>
        <!-- ===== Left-Sidebar-End ===== -->
        <!-- Page Content -->
        <div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="myadmin-alert myadmin-alert-icon myadmin-alert-click alert-success myadmin-alert-top alertSuccess"
                            id="success">
                            <span id="msg"></span> <a href="#" class="closed">×</a>
                        </div>

                        <div
                            class="myadmin-alert myadmin-alert-icon myadmin-alert-click alert-danger myadmin-alert-top alertError">
                            <span id="alertErrorMessage"></span> <a href="#" class="closed">&times;</a>
                        </div>

                        <?php if ($this->session->flashdata('errors') !== null) : ?>
                        <div class="myadmin-alert myadmin-alert-icon myadmin-alert-click alert-danger myadmin-alert-top alertSuccess"
                            style="display:block">
                            <?= $this->session->flashdata('errors'); ?> <a href="#" class="closed">×</a>
                        </div>
                        <?php endif ?>

                        <?php if ($this->session->flashdata('message') !== null) : ?>
                        <div class="myadmin-alert myadmin-alert-icon myadmin-alert-click alert-success myadmin-alert-top alertSuccess"
                            style="display:block">
                            <?= $this->session->flashdata('message'); ?> <a href="#" class="closed">×</a>
                        </div>
                        <?php endif ?>

                        <!-- page content -->
                        <?= $content ?>


                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
            <footer class="footer t-a-c">Copyright © <?= date('Y') ?> <span
                    class="text-primary font-bold"><?= $info->sname ?></span> | Property of DENR Albay ICT
                Unit.
                All
                rights
                reserved. </footer>
        </div>
        <!-- /#page-wrapper -->
        <img id="brg_logo" style="display: none;"
            src="<?= $info->login_bg ? site_url('assets/uploads/bg/').$info->login_bg : site_url('assets/img/rontech-white.png') ?>">
    </div>
    <!-- /#wrapper -->
    <?php $this->load->view('modal/modals.php') ?>
    <!-- ==============================
        Required JS Files
    =============================== -->
    <?php $this->load->view('templates/footer') ?>
</body>

</html>