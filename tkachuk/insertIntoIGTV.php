<?php

include_once('db.php');

$name = $_POST['name'];


$sql = "INSERT INTO IGTV(name) VALUES ('$name' )";

if ($mysqli->query($sql))
    {
        echo "Рядок видалено успішно";
    }
else
    {
        echo "Error" . $sql . "<br/>" . $mysqli->error;
    }


include_once("showIGTV.php");
?>
