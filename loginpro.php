<?php
//ssion_start();


	//Connect to server
	$link = mysqli_connect("localhost","root","pass") or die(mysql_error());
	//Select the database
	mysqli_select_db($link,"anonymous");

	// Get the login credentials from user
	$username = $_POST['username'];
	$userpassword = $_POST['password'];	
	
	// Secure the credentials
//uername = mysqli_real_escape_string($_POST['username']);
	//uerpassword = mysqlireal_escape_string($_POST['password']);

	// Check the users input against the DB.
	$query = "SELECT * FROM anonymous WHERE username = '$username' AND password = '$userpassword'";
	$result = mysqli_query($link,$query);
	
	$count = mysqli_num_rows($result);
	
	$query1="SELECT col_name from anonymous where username = '$username'";
	$result1=mysqli_query($link,$query1);
	$row=mysqli_fetch_array($result);
	if ($row['col_name']=="DJ")
	{	header("Location:cmnt.php");
}
	else
	{   header("Location:cmnt2.php");
	}
?>

