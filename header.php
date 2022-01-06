<?php
session_start();

?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Cafe Amazon</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<style>
			table tr td {padding:10px;}
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
	<div class="modal fade" id="Modal_login" role="dialog">
                        <div class="modal-dialog">					
                        </div>
                      </div>
                <div class="modal fade" id="Modal_register" role="dialog">
                        <div class="modal-dialog" style="">
                          <div class="modal-content">
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              
                            </div>
                            <div class="modal-body">
                            <?php
                                include "register_form.php";
    
                            ?>
          
                            </div>
                            
                          </div>

                        </div>
                      </div>
	</body>
	