<?php

		$conn = mysqli_connect("localhost","root","pass");
	
		mysqli_select_db($conn,"anonymous");

		$query="INSERT into Comments values ('$_POST[cmnt]')";
		$result=mysqli_query($conn,$query);
		
		header("Location:cmnt.php");
		
		
?>