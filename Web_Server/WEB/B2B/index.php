<html>

<head>
</head>

<body>
    <h1>Nous vous souhaitons le bienvenue sur notre site " WoodyToys l1-4 !</h1>
    <?php
        echo "<h3> Nous vous presentons notre catalogue de jouet </h3>";
    ?>
    <?php
        //getenv('MYSQL_DBHOST') ? $db_host=getenv('MYSQL_DBHOST') : $db_host="localhost";
        //getenv('MYSQL_DBPORT') ? $db_port=getenv('MYSQL_DBPORT') : $db_port="3306";
        //getenv('MYSQL_DBUSER') ? $db_user=getenv('MYSQL_DBUSER') : $db_user="WoodyToy";
        //getenv('MYSQL_DBPASS') ? $db_pass=getenv('MYSQL_DBPASS') : $db_pass="";
        //getenv('MYSQL_DBNAME') ? $db_name=getenv('MYSQL_DBNAME') : $db_name="db_woody";
        //echo "Bienvenue";
        $db_host  = "127.0.0.1";
        $db_user = "WoodyToy";
        $db_name = "db_woody";
        $db_pass = "HAKIZ";

        //$mysqli = mysqli_connect($db_host , $db_user , $db_pass , $db_name );
        $mysqli = new mysqli($db_host, $db_user, $db_pass, $db_name);
        // Check connection
        if (mysqli_connect_errno()){
                echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        if ($mysqli -> connect_error) {
        echo "Refused to connect to MySQL: " . $mysqli -> connect_error;
        exit();
        }
        $query = "SELECT * FROM woody;";
       // mysqli_query($mysqli, $query) or die('Error querying database.');
        $result = mysqli_query($mysqli, $query);

        while ($row = mysqli_fetch_array($result)) {
            echo $row['Name'] . ': '  . $row['Price'] . ' <br />';
        }
        //mysqli_close($mysqli);
    ?>

</body>
</html>
