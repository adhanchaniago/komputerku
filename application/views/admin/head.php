<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Dashboard - Ace Admin</title>

		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="<?=base_url();?>assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<?=base_url();?>assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->
		<?php 
		if (isset($css_files)) {
			foreach($css_files as $file){ ?>
				<link type="text/css" rel="stylesheet" href="<?=$file; ?>" />
			<?php
			}
		}elseif (isset($output->css_files)) {
		  foreach ($output->css_files as $file) {   
		?>
			<link type="text/css" rel="stylesheet" href="<?=$file; ?>" />
			<?php 
		 	}
		}
		if (isset($js_files)) {
		  foreach($js_files as $file){ ?>
		    <script src="<?=$file; ?>"></script>
				<?php
		  }
		}elseif (isset($output->js_files)) {
		  foreach ($output->js_files as $file) {
		?>
		  	<script src="<?=$file; ?>"></script>
				<?php
		  }
		}
		?>
		<!-- text fonts -->
		<link rel="stylesheet" href="<?=base_url();?>assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="<?=base_url();?>assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="<?=base_url();?>assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="<?=base_url();?>assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="<?=base_url();?>assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="<?=base_url();?>assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="<?=base_url();?>assets/js/ace-extra.min.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="<?=base_url();?>assets/js/html5shiv.min.js"></script>
		<script src="<?=base_url();?>assets/js/respond.min.js"></script>
		<![endif]-->
		<noscript>
      <?php if($this->uri->segment(1)!="nojs"){ ?>
        <meta http-equiv="Refresh" content="0;<?=base_url('nojs') ?>">
      <?php } ?>
    </noscript>
	</head>