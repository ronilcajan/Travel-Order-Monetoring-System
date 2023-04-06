<?php
$query =  $this->db->query("SELECT * FROM `system_info`");
$info = $query->row();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="<?= site_url('assets/img/rontech-trans.png') ?>">
    <title><?= $title ?> | <?= $info->sname ?></title>
    <!-- ===== Bootstrap CSS ===== -->
    <link href="<?= site_url('assets/bootstrap/dist/css/bootstrap.min.css') ?>" rel="stylesheet">
    <!-- ===== Plugin CSS ===== -->
    <!-- ===== Animation CSS ===== -->
    <link href="<?= site_url('assets/css/animate.css') ?>" rel="stylesheet">
    <!-- ===== Custom CSS ===== -->
    <link href="<?= site_url('assets/css/style.css') ?>" rel="stylesheet">
    <link href="<?= site_url('assets/css/custom.css') ?>" rel="stylesheet">
    <!-- ===== Color CSS ===== -->
    <link href="<?= site_url('assets/css/colors/default.css') ?>" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style>
    .login-register {
        background: #4F5467 !important;
    }

    .login-box {
        background: #192135 !important;
        margin-top: 5%;
    }

    .login-box .white-box {
        background-color: #202940;
        box-shadow: 0 0.75rem 1.5rem rgb(18 38 63 / 3%);
        border: 1px solid #202940;
    }

    @media (max-width:769px) {
        .login-register {
            background: #4F5467 !important;
        }

        .login-box {
            background: #192135 !important;
            margin-top: 5%;
        }

        html {
            background: #4F5467 !important;
        }
    }

    /* .login-register {
        background: url(<?= site_url('assets/uploads/bg/'). $info->login_bg ?>) center center/cover no-repeat !important;
        height: 100%;
        position: fixed;
    } */
    </style>
</head>

<body class="mini-sidebar">
    <!-- Preloader -->
    <div class="preloader">
        <div class="cssload-speeding-wheel"></div>
    </div>
    <section id="wrapper" class="login-register">

        <?= $content ?>

    </section>
    <!-- jQuery -->
    <script src="<?= site_url() ?>assets/plugins/components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<?= site_url() ?>assets/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="<?= site_url() ?>assets/js/sidebarmenu.js"></script>
    <!--slimscroll JavaScript -->
    <script src="<?= site_url() ?>assets/js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="<?= site_url() ?>assets/js/waves.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="<?= site_url() ?>assets/js/custom.js"></script>
    <!--Style Switcher -->
    <script src="<?= site_url() ?>assets/plugins/components/styleswitcher/jQuery.style.switcher.js"></script>
    <script>
    // show password when toggle
    $(".toggle-password").click(function() {
        $(this).toggleClass("fa-eye fa-eye-slash");
        var input = $($(this).attr("toggle"));

        if (input.attr("type") == "password") {
            input.attr("type", "text");
        } else {
            input.attr("type", "password");
        }
    });
    </script>
</body>

</html>