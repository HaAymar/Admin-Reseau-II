<?php
$mysqli = new mysqli("localhost",'root','admin','woodytoys_db');

// Check connection
if ($mysqli -> connect_errno) {
  echo "Refused to connect to MySQL: " . $mysqli -> connect_error;
  exit();
}

?>

<html>

<head>
</head>

<body>
    <h1>Nous vous souhaitons le bienvenue sur notre site " WoodyToys l1-4 !</h1>

    <?php
        $query = "SELECT * FROM toys;";
        mysqli_query($mysqli, $query) or die('Error querying database.');
        $result = mysqli_query($mysqli, $query);

        while ($row = mysqli_fetch_array($result)) {
            echo $row['id_toys'] . ': ' . $row['toyName'] . ' ' . $row['toyPrice'] . ' <br />';
        }
    ?>

</body>

</html>
