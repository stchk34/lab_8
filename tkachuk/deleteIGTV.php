<?php

include_once('db.php');

$id = $_POST['id'];


$sql = "DELETE FROM IGTV WHERE id='$id'";


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
