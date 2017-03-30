<?php

		$conn = mysqli_connect("localhost","root","pass");
	
		mysqli_select_db($conn,"anonymous");

		$query="INSERT into comments2 values ('$_POST[cmnt]')";
		$result=mysqli_query($conn,$query);
		
		header("Location:cmnt2.php");
		
		
?>