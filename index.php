<?php
require "config/constants.php";
session_start();
if(isset($_SESSION["uid"])){
	header("location:profile.php");
}
if(isset($run_query)){
	echo "<script>alert('Wow! User Registration Completed.')</script>";
}
if (isset($_POST["login_user_with_product"])) {
	$product_list = $_POST["product_id"];
	$json_e = json_encode($product_list);
	setcookie("product_list",$json_e,strtotime("+1 day"),"/","","",TRUE);

}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Amazon Cafe</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

		<link rel="stylesheet" type="text/css" href="style.css">
	</head>
<body>
<div class="wait overlay">
	<div class="loader"></div>
</div>
	<p><br/></p>
	<p><br/></p>
	<p><br/></p>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8" id="signup_msg">
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="row" style="width: 1150px; height :400px;  margin: auto; ">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<div class="panel panel-primary">
					<p class="login-text" style="font-size: 2.5rem; font-weight: 800; margin-bottom: 10px; text-align: center;">Login</p>
					<div class="panel-body">
						<form onsubmit="return false" id="login">
							<label for="email">Email</label>
							<input type="email" class="form-control" name="email" id="email" required/>
							<label for="email">Password</label>
							<input type="password" class="form-control" name="password" id="password" required/>
							<p><br/></p>
		                    <input type="submit" class="btn btn-success" style="float:right;" Value="Login">
							<p class="login-register-text">Don't have an account? <a href="customer_registration.php?register=1.php">Register</a></p>				
						</form>
				</div>
				<div class="panel-footer"><div id="e_msg"></div></div>
			</div>
		</div>
		<div class="col-md-4"></div>
	</div>
</body>
</html>








































































