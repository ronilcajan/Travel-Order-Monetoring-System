<?php
$query = $this->db->query("SELECT * FROM system_info");
$info = $query->row();
?>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" type="image/png" sizes="16x16"
    href="<?= $info->login_bg ? site_url('assets/uploads/').$info->login_bg : site_url('assets/img/rontech-white.png') ?>">
<!-- ===== Bootstrap CSS ===== -->
<link href="<?= site_url() ?>assets/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- ===== Plugin CSS ===== -->
<link href="<?= site_url() ?>assets/plugins/components/dropify/dist/css/dropify.min.css" rel="stylesheet" />
<link href="<?= site_url() ?>assets/plugins/components/custom-select/custom-select.css" rel="stylesheet"
    type="text/css" />
<link href="<?= site_url() ?>assets/plugins/components/select2/select2.min.css" rel="stylesheet" type="text/css" />
<link href="<?= site_url() ?>assets/plugins/components/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" />

<link href="<?= site_url() ?>assets/plugins/components/datatables/jquery.dataTables.min.css" rel="stylesheet"
    type="text/css" />
<link href="<?= site_url() ?>assets/plugins/components/summernote/summernote.min.css" rel="stylesheet">
<link href="<?= site_url() ?>assets/plugins/components/jquery-asColorPicker-master/css/asColorPicker.css"
    rel="stylesheet">

<!-- chart plugin -->
<link href="<?= site_url() ?>assets/plugins/components/morrisjs/morris.css" rel="stylesheet">
<link href="<?= site_url() ?>assets/plugins/components/chartist-js/dist/chartist.min.css" rel="stylesheet">
<link href="<?= site_url() ?>assets/plugins/components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css"
    rel="stylesheet">
<link href="<?= site_url() ?>assetsplugins/components/css-chart/css-chart.css" rel="stylesheet">

<link href="<?= site_url() ?>assets/plugins/components/switchery/dist/switchery.min.css" rel="stylesheet" />
<!-- Datatable -- -->
<link href="<?= site_url() ?>assets/plugins/components/datatables/jquery.dataTables.min.css" rel="stylesheet"
    type="text/css" />
<link href="<?= site_url() ?>assets/plugins/components/datatables/Buttons-1.6.1/css/buttons.dataTables.min.css"
    rel="stylesheet" type="text/css" />
<link href="<?= site_url() ?>assets/plugins/components/datatables-responsive/css/responsive.dataTables.scss"
    rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/apexcharts/dist/apexcharts.min.css">


<!-- ===== Animation CSS ===== -->
<link href="<?= site_url() ?>assets/css/animate.css" rel="stylesheet">
<!-- ===== Custom CSS ===== -->
<link href="<?= site_url() ?>assets/css/style.css" rel="stylesheet">
<!-- ===== Color CSS ===== -->
<link href="<?= site_url() ?>assets/css/colors/default-dark.css" id="theme" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<link href="<?= site_url() ?>assets/css/custom.css" rel="stylesheet">