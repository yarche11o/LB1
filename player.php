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
        <th>Player</th>
        <th>Date</th>
        <th>Place</th>
        <th>Score</th>
        <th>Team1</th>
        <th>Team2</th>
</tr>
</body>
</html>

<body>
    <?php
    include "connect.php";
    $player = $_GET['player'];
    echo "<h4>Список игр в которых принимает участие ".$player."</h4>";
    $sql = "SELECT * FROM player JOIN team AS t1 ON PLAYER.FID_TEAM = t1.ID_TEAM JOIN game ON t1.ID_TEAM = game.FID_TEAM1 JOIN team AS t2 ON game.FID_TEAM2 = t2.ID_TEAM WHERE player.name =:player";
    $sth = $dbh->prepare($sql);
    $sth->execute(array('player' => $player));

    $table = $sth->fetchAll(PDO::FETCH_NUM);

    foreach ($table as $row)
    {
        $Date = $row[8];
        $Place = $row[9];
        $Score = $row[10];
        $Team1 = $row[4];
        $Team2 = $row[14];
        echo "<tr><td>$player</td><td>$Date</td><td>$Place</td><td>$Score</td><td>$Team1</td><td>$Team2</td></tr>";
    }
    ?>
</body>
<html>