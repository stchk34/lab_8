<?php

include_once('db.php');



$id = $_POST['id'];
$text = $_POST['text'];


$sql = "UPDATE comments SET text='$text' WHERE id='$id'";


if($mysqli->query($sql)){
    echo "Рядок змінено успішно";
    }
else
    {
        echo "Error" . $sql . "<br/>" . $mysqli->error;
    }




include_once("showComments.php");
?>
