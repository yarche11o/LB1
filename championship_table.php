<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>LB1</title>
  <link href="style.css" rel="stylesheet">
</head>

<body>
    <table>
    <tr>
        <th>League</th>
        <th>Date</th>
        <th>Place</th>
        <th>Score</th>
        <th>Team1</th>
        <th>Team2</th>
</tr>
</body>
</html>

    <?php
    include "connect.php";
    $league = $_GET['league'];
    $sql = "SELECT * FROM game JOIN team AS t1 ON game.FID_TEAM1 = t1.ID_TEAM JOIN team AS t2 ON game.FID_TEAM2 = t2.ID_TEAM WHERE t1.league = :league AND t2.league = :league";
    echo "<h4>Таблица чемпионата ".$league."</h4>";
    $sth = $dbh->prepare($sql);
        
    $sth->bindParam(':league', $league, PDO::PARAM_STR);
    $sth->execute();
    $table = $sth->fetchAll(PDO::FETCH_NUM);

    foreach ($table as $row) 
    {
        $Date = $row[1];
        $Place = $row[2];
        $Score = $row[3];
        $Team1 = $row[7];
        $League = $row[8];
        $Team2 = $row[11];
        echo "<tr><td>$League</td><td>$Date</td><td>$Place</td><td>$Score</td><td>$Team1</td><td>$Team2</td></tr>";
    }
    ?>
