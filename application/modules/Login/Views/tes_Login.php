<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/ico/favicon.ico">

    <title>KOMPUTERKU</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    
    <script src="assets/js/modernizr.js"></script>
  </head>

  <body> 
  <div>
  	<form action="<?php echo base_url('login/aksi_login'); ?>" method="post">
  	<div class="container">    
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">		
		  	<div class="panel panel-info" >
                    <div class="panel-heading">
		  	<div class="col-md-12">
		  		<div class="col-md-9">
		  	 		<div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="login-username" type="text" class="form-control" name="username" value="" placeholder="username or email">                                        
                                    </div>
            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input id="login-password" type="password" class="form-control" name="password" placeholder="password">
                                    </div>
<!--		<table>
			<tr>
				<td>Username</td>
				<td><input type="text" name="username"></td>
			</tr>-->
<!--			<tr>
				<td>Password</td>
				<td><input type="password" name="password"></td>
			</tr> -->
			<tr>
				<td></td>
				<td><input type="submit" class="btn btn-success" value="Login"></td>
			</tr>
		</table>
			</div>
			</div>
			</div>
		</div>
		</div>
	</form>
  </div>
</body>
</html>