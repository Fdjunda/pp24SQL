<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ciklicka tablica</title>
    <link rel="stylesheet" href="index.css">
    <style>   
    td{
    border: 1px solid rgb(247, 239, 239);
    text-align: center;
    color:white;
    height: 30px;
    width: 30px;
}     
        table {
                float:right;  
                background:padding:100px;
                border:;
        }
        body{
            background-color:red;
            
        }
        .row {
            float:right;
            color:white;
            border:
            
              }
        button{
            background-color:yellow;
        }
       
        </style>
    </head>
<body>


<?php

if(isset($_GET['x'])){
    $x=$_GET['x'];
}else{
    echo 'Obavezno postavljanje GET parametra x za broj redova';
    exit;
}

if(isset($_GET['y'])){
    $y=$_GET['y'];
}else{
    echo 'Obavezno postavljanje GET parametra y za broj stupaca';
    exit;
}

$xos=$x-2;
$yos=$y-2;
$red=$x-1;
$stupac=$y-1;
$loop=$x*$y;
$broj=1;
$matrica=array();

for($broj;$broj<=$loop;){
    for($j=$yos;$j>=0;$j--){
        $matrica[$red][$stupac]=$broj++;
        $stupac--;
        if($broj>$loop){
            break;
        }
    }

    for($j=$xos;$j>=0;$j--){
        $matrica[$red][$stupac]=$broj++;
        $red--;
        if($broj>$loop){
            break;
        }
    }

    for($i=0;$i<=$yos;$i++){
        $matrica[$red][$stupac]=$broj++;
        $stupac++;
        if($broj>$loop){
            break;
        }
    }
    
    for($i=0;$i<=$xos;$i++){
        $matrica[$red][$stupac]=$broj++;
        $red++;
        if($broj>$loop){
            break;
        }
    }
    $red-=1;
    $stupac-=1;
    $yos-=2;
    $xos-=2;
}

echo '<table>';
for($i=0;$i<count($matrica);$i++){
    echo '<tr>';
    for($j=0;$j<count($matrica[$i]);$j++){
        echo '<td>', $matrica[$i][$j] , '</td>';    
    }
    echo '</tr>';
}
echo '</table>';