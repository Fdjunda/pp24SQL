<?php

if(!isset($_POST['name'])){
    header('location: index.php');
    exit;
}

if($_POST['name']!='filip' ){
    session_start();
    if(empty($_POST['name'])){
        $_SESSION['name']='nepoznato';
    }else{
        $_SESSION['name']=$_POST['name'];
    }
    header('location: index.php');
    exit;
}

session_start();
$_SESSION['name']='filip';
header('location: privatno.php');