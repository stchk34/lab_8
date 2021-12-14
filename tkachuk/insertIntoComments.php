<?php

include_once('db.php');


$text = $_POST['text'];

$sql = "INSERT INTO comments (text) VALUES ('$text' )";


if($mysqli->query($sql)){
    echo "Рядок вставлено успішно";
    }
else
    {
        echo "Error" . $sql . "<br/>" . $mysqli->error;
    }


include_once("showComments.php");

?>
