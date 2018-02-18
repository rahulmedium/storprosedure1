<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "codebos";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// Set autocommit to off
mysqli_autocommit($conn,FALSE);
// prepare and bind
$stmt = $conn->prepare("INSERT INTO Persons (FirstName,LastName,Age) VALUES (?, ?, ?)");
$stmt->bind_param("ssi", $firstname, $lastname, $age);

// set parameters and execute
$firstname = "John";
$lastname = "Doe";
$age = "12";
$stmt->execute();

$firstname = "Mary";
$lastname = "Moe";
$age = "13";
$stmt->execute();

$firstname = "Julie";
$lastname = "Dooley";
$age = "14";
$stmt->execute();

echo "New records created successfully";
// Commit transaction
mysqli_commit($conn);
$stmt->close();
$conn->close();
?>