<?php
session_start();
if(isset($_SESSION['mail']) && isset($_SESSION['pass'])){
	define('TEMPLATE', true);
	include_once('../config/connect.php');
	$blog_id = $_GET['blog_id'];
	$sql = "DELETE FROM blog
			WHERE blog_id = $blog_id";
	mysqli_query($conn, $sql);
	header('location:index.php?page_layout=blog');
}
else{
	header('location:index.php');
}
?>