<?php
if(!isset($_SESSION)) 
    { 
       session_start(); 
    } 
include_once"database.php";
if (isset($_POST['fullname'])&& isset($_POST['email']))
	{
	 if ($_POST['fullname'] == '')
	{
		echo"khong duoc de trong";
		exit;
	}
	if (mysqli_query($conn,"update dangnhap set hoten='".$_POST['fullname']."', email='".$_POST['email']."' where tendn='".$_SESSION['tendn']."'")==1)
		echo"cap nhat thanh cong";
	else
		echo"cap nhat that bai";
}
?>
