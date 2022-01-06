<?php
if (isset($_GET["register"])) {
?>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Cafe Amazon</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>
<body>
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
		<div class="row" style="width: 550px; height :300px;  margin: auto;">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="panel panel-primary">
				<p class="login-text" style="font-size: 2.5rem; font-weight: 800; margin-bottom: 10px; text-align: center;">Register</p>
					<div class="panel-body">
					
					<form id="signup_form" onsubmit="return false" style="width: 300px; height :400px;">
						<div class="row">
							<div class="col-md-12">
								<label for="f_name">First Name</label>
								<input type="text" id="f_name" name="f_name" class="form-control" required>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="f_name">Last Name</label>
								<input type="text" id="l_name" name="l_name"class="form-control" required>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="email">Email</label>
								<input type="text" id="email" name="email"class="form-control" required>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="password">Password</label>
								<input type="password" id="password" name="password"class="form-control" required>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="repassword">Confirm Password</label>
								<input type="password" id="repassword" name="repassword"class="form-control" required>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="mobile">Contact Number</label>
								<input type="text" placeholder="xxx-xxxx-xxx" id="mobile" name="mobile"class="form-control" pattern="[0-9]{3}-[0-9]{4}-[0-9]{3}" required>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="Date">Date</label>
								<input type="date"  name="dateofbirth" class="form-control"  required>
							</div>
						</div>
						<p><br/></p>
						<div class="row">
							<div class="col-md-12">
								
							<input style="width:100%; hight: 20%; float:center ;" value="Sign Up" type="submit" name="signup_button"class="btn btn-success btn-lg">
							<p><br/></p>
						<p class="login-register-text">Have an account? <a href="index.php">Login Here</a>.</p>
							</div>
						</div>
					</div>	
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
	<?php
}


?>