<?php
$con=mysqli_connect("localhost","root","","codebos");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

// Set autocommit to off
mysqli_autocommit($con,FALSE);

// Insert some values 
mysqli_query($con,"INSERT INTO Persons (FirstName,LastName,Age)
VALUES ('Peter','Griffin',35)");
$query=mysqli_query($con,"INSERT INTO Persons (FirstName,LastName,Age) 
VALUES ('Glenn','Quagmire',33)");

if($query==1){
	echo 'inserted';
}else{
	echo 'duplicate';
}
// Commit transaction
mysqli_commit($con);

// Close connection
mysqli_close($con);
?>