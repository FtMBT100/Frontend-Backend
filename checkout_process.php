<?php
session_start();
include "db.php";
if (isset($_SESSION["uid"])) {
    date_default_timezone_set("Asia/Bangkok");
	$address = $_POST['address'];
    $cardname= $_POST['cardname'];
    $cardnumber= $_POST['cardNumber'];
    $expdate= $_POST['expdate'];
    $cvv= $_POST['cvv'];
    $cardnumberstr=(string)$cardnumber;
    $product_id = "SELECT a.product_id,b.id  FROM products a,cart b WHERE a.product_id=b.p_id";
    $count=$_POST['total_count'];
    $price = $_POST['total_price'];
    $user_id=$_SESSION['uid'];
    $today = date("Y-m-d H:i:s");   
    $date = date('Y-m-d');  
    $time = date("H:i:s");       
    $sql0="SELECT order_id from `order`";

    $runquery=mysqli_query($con,$sql0);
    if (mysqli_num_rows($runquery) == 0) {
        echo( mysqli_error($con));
        $order_id=1;
    }else if (mysqli_num_rows($runquery) > 0) {
        $sql2="SELECT MAX(order_id) AS max_val from `order`";
        $runquery1=mysqli_query($con,$sql2);
        $row = mysqli_fetch_array($runquery1);
        $order_id= $row["max_val"];
        $order_id=$order_id+1;
        echo( mysqli_error($con));
    }
    $i=1;
    $sub_total=0;
    $T=0;
    while($i<=$count){
        $str=(string)$i;
        $prod_id_+$str = $_POST['prod_id_'.$i];
        $prod_id=$prod_id_+$str;		
        $prod_price_+$str = $_POST['prod_price_'.$i];
        $prod_price=$prod_price_+$str;
        $prod_qty_+$str = $_POST['prod_qty_'.$i];
        $prod_qty=$prod_qty_+$str;
        $T=$T+((int)$prod_qty);
        $sub_total=$sub_total+((float)$prod_price*(float)$prod_qty);
        $i++;
    }
    
	$sql = "INSERT INTO `order`
    (`order_id`,`total_amount`,`total_price`,`date`,`email`) 
    VALUES ('$order_id','$T','$sub_total','$today','$user_id')";
 if(mysqli_query($con,$sql)){
    $x = randomString();
    $sql4 = "INSERT INTO `payment`
    (`pay_id`,`email`,`total_price`,`trx_id`,`pay_time`,`pay_date`,`p_status`) 
    VALUES (NULL,'$user_id','$sub_total','$x','$time','$date','incomplete')";
}

    if(mysqli_query($con,$sql4)){
        $i=1;
        $prod_id_=0;
        $prod_price_=0;
        $prod_qty_=0;
        while($i<=$count){
            $str=(string)$i;
            $prod_id_+$str = $_POST['prod_id_'.$i];
            $prod_id=$prod_id_+$str;		
            $prod_price_+$str = $_POST['prod_price_'.$i];
            $prod_price=$prod_price_+$str;
            $prod_qty_+$str = $_POST['prod_qty_'.$i];
            $prod_qty=$prod_qty_+$str;
            $sub_total=(float)$prod_price*(float)$prod_qty;

            $sql1="INSERT INTO `order_detail` 
            (`orderdetail_id`,`address`,`cardname`,`cardnumber`,
            `expdate`,`cvv`,`product_id`,`amount`,`price`,`order_id`,`email`) 
	     VALUES (NULL,'$address','$cardname','$cardnumberstr',
         '$expdate','$cvv',' $prod_id',' $prod_qty',' $sub_total','$order_id','$user_id')";
          if(mysqli_query($con,$sql1)){
            $x = randomString();
            $sql4 ="UPDATE payment SET p_status='complete' WHERE email='$user_id'";
        }
             
            if(mysqli_query($con,$sql4)){
                $del_sql="DELETE from cart where email='$user_id'";

                if(mysqli_query($con,$del_sql)){    
                    echo"<script>window.location.href='profile.php'</script>";
                }else{
                    echo(mysqli_error($con));
                }

            }else{
                echo(mysqli_error($con));
            }
            $i++;
        }
    }else{
        echo(mysqli_error($con));
    }
    
}else{
    echo"<script>window.location.href='index.php'</script>";
}
function randomString($length =17) {
	$str = "";
	$characters = array_merge(range('A','Z'), range(0,9), );
	$max = count($characters) - 1;
	for ($i = 0; $i < $length; $i++) {
		$rand = mt_rand(0, $max);
		$str .= $characters[$rand];
	}
	return $str;
}

?>
