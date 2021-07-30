<?php
session_start();
if(isset($_SESSION['mail']) && isset($_SESSION['pass'])){
	define('TEMPLATE', true);
	include_once('../config/connect.php');
	$id = $_GET['id'];
	$sql = "DELETE FROM gift_code
			WHERE id = $id";
	mysqli_query($conn, $sql);
	header('location:index.php?page_layout=giftcode');
}
else{
	header('location:index.php');
}
