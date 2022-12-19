<?php


              require_once('dbconnect.php');
			

              if(isset($_POST['name']) && isset($_POST['phone']) && isset($_POST['adress']) && isset($_POST['code']) && isset($_POST['payment'])){

					   $serialno = $_POST['serialno'];

					   $name = $_POST['name'];

					   $phone = $_POST['phone'];

					   $adress = $_POST['adress'];

					   $code = $_POST['code'];
					   
					   $payment = $_POST['payment'];

                         
						 $code_query = "INSERT INTO information(serialno, name, phone, adress, code, payment) VALUES('$serialno', '$name', '$phone', '$adress', '$code','$payment')";

						 mysqli_query($conn, $code_query);

						 header('location: run.php');

              }

              else{

                          header('location: html.php');

              }