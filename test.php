<?php
try{
$conn=new PDO("mysql:host=localhost;dbname=viva","root","");
}catch(PDOException $e){
	die("connection field".$e->getmessage());
}
?>