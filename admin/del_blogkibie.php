<?php
session_start();
if(isset($_SESSION['mail']) && isset($_SESSION['pass'])){
	define('TEMPLATE', true);
	include_once('../config/connect.php');
	$blogki_id = $_GET['blogki_id'];
	$sql = "DELETE FROM blog_kibie
			WHERE blogki_id = $blogki_id";
	mysqli_query($conn, $sql);
	header('location:index.php?page_layout=blogkibie');
}
else{
	header('location:index.php');
}
