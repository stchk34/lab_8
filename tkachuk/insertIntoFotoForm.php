<html>
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="Лабораторна робота, MySQL, з'єднання з базою даних">
    <meta name="description" content="Лабораторна робота. З'єднання з базою даних">
    <title>Вставка даних</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <?php
        include_once("showFoto.php")    
    ?>

    <form action="insertFormFOTO.php" method="post">
        <label>text</label><input name="post" type="text"><br>
       

        <input type="submit" value="Вставити пост">
    </form>

</body>
</html>
