$(document).ready(function(){

	getCustomers();
	getCustomerOrders();

	function getCustomers(){
		$.ajax({
			url : '../admin/classes/Customers.php',
			method : 'POST',
			data : {GET_CUSTOMERS:1},
			success : function(response){
				
				console.log(response);
				var resp = $.parseJSON(response);
				if (resp.status == 202) {

					var customersHTML = "";

					$.each(resp.message, function(index, value){

						customersHTML += '<tr>'+
									          '<td>#</td>'+
									          '<td>'+value.first_name+' '+value.last_name+'</td>'+
									          '<td>'+value.email+'</td>'+
									          '<td>'+value.mobile+'</td>'+
									       '</tr>'

					});

					$("#customer_list").html(customersHTML);

				}else if(resp.status == 303){

				}

			}
		})
		
	}

	function getCustomerOrders(){
		$.ajax({
			url : '../admin/classes/Customers.php',
			method : 'POST',
			data : {GET_CUSTOMER_ORDERS:1},
			success : function(response){
				
				console.log(response);
				var resp = $.parseJSON(response);
				if (resp.status == 202) {

					var customerOrderHTML = "";

					$.each(resp.message, function(index, value){

						customerOrderHTML +='<tr>'+
						'<td>'+value.pay_date+' -- '+value.pay_time+'</td>'+
								              '<td>'+ value.total_price.toLocaleString() +'</td>'+
								              '<td>'+ value.trx_id +'</td>'+
								              '<td>'+ value.p_status +'</td>'+
								            '</tr>';

					});

					$("#customer_order_list").html(customerOrderHTML);

				}else if(resp.status == 303){
					$("#customer_order_list").html(resp.message);
				}

			}
		})
		
	}


});