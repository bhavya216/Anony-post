<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */

$link = mysqli_connect("localhost","root","pass","anonymous");
 
// Check connection
if($link == false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 mysqli_select_db($link,"anonymous");
// Attempt insert query execution
$f_name=$_POST['fname'];
$l_name=$_POST['lname'];
$name=$f_name.$l_name;
$e_email=$_POST['email'];
$un=$_POST['username'];
$pw=$_POST['password'];
$col=$_POST['col_name'];
$counter=0;




$query="SELECT username from anonymous";
	$result=mysqli_query($conn,$query);

	while($row=mysqli_fetch_array($result))
	{
	 if($un==$row['username'])
	 {$counter=10;break;}
	}


if($counter==10){
echo "<script type='text/javascript'>";
echo "alert('Username already exists!Please use a different username.');";
echo "</script>";
header('Refresh:0;url=signup.php');
}
else
{
$QUERY1 = "INSERT into anonymous(lname,fname,email,username,password,col_name) values 
('$f_name','$l_name','$e_email','$un','$pw','$col')";
mysqli_query($link,$QUERY1);
header('Location:reallogin.php');
}

 
// Close connection
mysqli_close($link);

?>