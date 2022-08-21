<html lang="fr">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>WoodyToys</title>
    </head>
    <body>
        <h1>Nous vous souhaitons le bienvenue sur notre site WoodyToys L1-4</h1>
    <?php

    $host = '192.168.0.3';
    $user = 'WoodyToy';
    $password = 'HAKIZ';
    $db = 'db_woody';

    $conn = mysql_connect($host, $user , $password , $db);
    if($conn->connect_error){
       echo 'connection failed'
    }
    echo 'Successfull connect';

    $query = "SELECT * FROM woody;";
        mysqli_query($conn, $query) or die('Error querying database.');
        $result = mysqli_query($conn, $query);

        while ($row = mysqli_fetch_array($result)) {
            echo $row['id'] . ': ' . $row['nom'] . ' ' . $row['prix'] . ' <br />';
        }
    ?>

    </body>
</html>
