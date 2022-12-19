<?php

	$servername = 'localhost';
	$username = 'root';
	$password = '';
	$dbname = 'moto';
	
	$conn = new mysqli($servername, $username, $password);
	
	if ($conn->connect_error){
		die("Connection to database server error" . $conn->connect_error);
	}
	else{
		mysqli_select_db($conn, $dbname);
		echo "";
	}

?>