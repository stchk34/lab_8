<html>
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="Лабораторна робота, MySQL, з'єднання з базою даних">
    <meta name="description" content="Лабораторна робота. З'єднання з базою даних">
    <title>Таблиця IGTV</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Таблиця IGTV</h1>


    <?php

    include_once('db.php');

    $sql = 'SELECT * FROM IGTV';


    if($result = $mysqli->query($sql)) {  

        printf("Перелік  за день: <br><br>");   
        printf("<table><tr><th>ID</th><th>NAME</th></tr>");   
        while( $row = $result->fetch_assoc() ){ 
            printf("<tr><td>%s</td><td>%s</td></tr>", $row['id'], $row['name']); 
        };
        printf("</table>");
        
        $result->close();
    };

    
    $mysqli->close();
    ?>

    <br><br><br>

    <ul>
        <li><a href="insertIntoIGTVForm.php">добавлення даних</a><br></li>
        <li><a href="deleteIGTVForm.php">видалення контенту</a><br></li>
        <li><a href="index.html">На головну</a><br></li>
    </ul>
    
</body>
</html>
