<?php


              require_once('dbconnect.php');
			

              if(isset($_POST['fname']) && isset($_POST['email']) && isset($_POST['adress']) && isset($_POST['city']) && isset($_POST['state']) && isset($_POST['zip']) && isset($_POST['cname']) && isset($_POST['card']) && isset($_POST['emonth']) && isset($_POST['eyear']) && isset($_POST['cvv'])){

					   $serialno = $_POST['serialno'];

					   $fname = $_POST['fname'];

					   $email = $_POST['email'];

					   $adress = $_POST['adress'];

					   $city = $_POST['city'];
					   
					   $state = $_POST['state'];
					   
					   $zip = $_POST['zip'];
					   
					   $cname = $_POST['cname'];
					   
					   $card = $_POST['card'];
					   
					   $emonth = $_POST['emonth'];
					   
					   $eyear = $_POST['eyear'];
					   
					   $cvv = $_POST['cvv'];

                         
						 $pcode_query = "INSERT INTO pay(serialno, fname, email, adress, city, state, zip, cname, card, emonth, eyear, cvv) VALUES('$serialno', '$fname', '$email', '$adress', '$city','$state', '$zip', '$cname', '$card', '$emonth', '$eyear', '$cvv')";

						 mysqli_query($conn, $pcode_query);

						 header('location: cond.php');

              }

              else{

                          header('location: pay.php');

              }
