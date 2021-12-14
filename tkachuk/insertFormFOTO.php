<?php

include_once('db.php');


$post = $_POST['post'];

$sql = "INSERT INTO foto (post) VALUES ('$post' )";


if($mysqli->query($sql)){
    echo "Рядок вставлено успішно";
    }
else
    {
        echo "Error" . $sql . "<br/>" . $mysqli->error;
    }


include_once("showFoto.php");

?>