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
        include_once("showComments.php")    
    ?>

    <form action="insertIntoComments.php" method="post">
        <label>ТЕКСТ</label><input name="text" type="text"><br>

        <input type="submit" value="Вставити рядок">
    </form>

</body>
</html>
