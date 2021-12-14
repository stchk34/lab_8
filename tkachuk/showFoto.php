<html>
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="Лабораторна робота, MySQL, з'єднання з базою даних">
    <meta name="description" content="Лабораторна робота. З'єднання з базою даних">
    <title>Таблиця Foto</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Таблиця Post</h1>


    <?php

    include_once('db.php');

    $sql = 'SELECT * FROM foto';


    if($result = $mysqli->query($sql))
    {   
        printf("Пост в інстаграмі: <br><br>");   
        printf("<table><tr><th>ID</th><th>Зміст</th></tr>");
        while( $row = $result->fetch_assoc() )
        {
            printf("<tr><td>%s</td><td>%s</td></tr>", $row['id'], $row['post']);
        };
        printf("</table>");
        $result->close();
    };

    $mysqli->close();
    ?>

    <br><br><br>

    <ul>
    <li><a href="insertIntoFotoForm.php">Добавити пост</a><br></li>
        <li><a href="deleteFromFotoForm.php">Видалити комент</a><br></li>
        <li><a href="index.html">На головну</a><br></li>
    </ul>
    
</body>
</html>
