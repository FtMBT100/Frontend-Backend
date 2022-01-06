<?php
session_start();
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
		<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {

  text-align: left;
  padding: 12px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
	</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">	
			<div class="navbar-header">
				<a href="#" class="navbar-brand">Cafe Amazon</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="index.php"><span class="glyphicon glyphicon-home"></span>Home</a></li>
				<li><a href="index.php"><span class="glyphicon glyphicon-modal-window"></span>Product</a></li>
			</ul>
		</div>
	</div>
	<p><br/></p>
	<p><br/></p>
	<p><br/></p>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="panel panel-default">
					<div class="panel-heading"></div>
					<div class="panel-body">
						<h1>History Order details</h1>
						<hr/>
						<table >
            <tr>
              <th>No.</th>
              <th>Email</th>
              <th>Pay time -- Pay date</th>
              <th>Total price</th>
              <th>Trx Id</th>
              <th>Payment Status</th>
</tr>
						<?php
							include_once("db.php");
							$orders_list = "SELECT o.pay_id,o.email,o.pay_time,o.pay_date,o.trx_id,o.p_status,o.total_price FROM payment o ";
							$query = mysqli_query($con,$orders_list);
							$i=1;
							
							if (mysqli_num_rows($query) > 0) {
								
								while ($row=mysqli_fetch_array($query)) {
									$f=number_format($row["total_price"],2);
									?>
                                                     <tr>
									                <td><?php echo  $i?></td>
													<td><?php echo $row["email"]; ?></td>
													<td><?php echo $row["pay_date"]." -- ".$row["pay_time"]; ?></t>
													<td><?php echo $f." ".CURRENCY; ?></th>
													<td><?php echo $row["trx_id"]; ?></td>
													<td><?php echo $row["p_status"]; ?></td>
									<?php
										$i++;
								}
								
							}
						?>
			
</body>
</html>
















































