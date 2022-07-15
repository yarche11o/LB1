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
  $date = $_GET['date'];
  echo "<h4>Список игр на ".$date."</h4>";
  $sql = "SELECT * FROM game JOIN team AS t1 ON game.FID_TEAM1 = t1.ID_TEAM JOIN team AS t2 ON game.FID_TEAM2 = t2.ID_TEAM WHERE game.date = :date"; 
  $sth = $dbh->prepare($sql);
  $sth->bindValue(':date', $date, PDO::PARAM_STR);
  $sth->execute();

  $table = $sth->fetchAll(PDO::FETCH_NUM);

  foreach ($table as $row) 
  {
    $Place = $row[2];
    $Score = $row[3];
    $Team1 = $row[7];
    $Team2 = $row[11];
    echo "<tr><td>$date</td><td>$Place</td><td>$Score</td><td>$Team1</td><td>$Team2</td></tr>";
  }
  ?>
</body>
<html>