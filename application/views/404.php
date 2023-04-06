
<?php  
    $query1 = $this->db->query("SELECT sname FROM system_info WHERE id=1");
    $info = $query1->row();
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>404 |  <?= $info->sname ?></title>
	<?php $this->load->view('templates/header') ?>
</head>
<body class="mini-sidebar">
    <!-- Preloader -->
    <div class="preloader">
        <div class="cssload-speeding-wheel"></div>
    </div>
    <section id="wrapper" class="error-page">
        <div class="error-box">
            <div class="error-body text-center">
                <h1>404</h1>
                <h3 class="text-uppercase">Page Not Found !</h3>
                <p class="text-muted m-t-30 m-b-30">YOU SEEM TO BE TRYING TO FIND HIS WAY HOME</p>
                <a href="javascript:void(0)" onclick="window.history.go(-1)" class="btn btn-info btn-rounded waves-effect waves-light m-b-40">Back to home</a> </div>
				<footer class="footer t-a-c"> © <?= date('Y') ?> <?= $info->sname ?></footer>
			</div>
        </div>
    </section>
	<?php $this->load->view('templates/footer') ?>
</body>
</html>