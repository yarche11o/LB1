
<?php
    include('connect.php');
?>

<!DOCTYPE HTML>
<html>

<head>
    <title>LB1</title>
</head>
<form method="GET" action="championship_table.php">
Получить таблицу чемпионата лиги <select name="league" id="league">
        <?php
        $sql = "SELECT DISTINCT league FROM team";
        foreach ($dbh->query($sql) as $row) {
            $name = $row[0];
            print "<option value='$name'>$name</option>";
        }
        ?>
    </select>
    <button> ОК </button>
</form>

<br>

<form method="GET" action="date.php">
Получить список игр на указанную дату <select name="date" id="date">
        <?php
        $sql = "SELECT DISTINCT date FROM game";
        foreach ($dbh->query($sql) as $row) {
            $name = $row[0];
            print "<option value='$name'>$name</option>";
        }
        ?>
    </select>
    <button> ОК </button>
</form>

<br>

<form method="GET" action="player.php">
Получить список игр футболиста <select name="player" id="player">
        <?php
        $sql = "SELECT DISTINCT * FROM player";
        foreach ($dbh->query($sql) as $row) {
            $name = $row[1];
            print "<option value='$name'>$name</option>";
        }
        ?>
    </select>
    <button> ОК </button>
</form>

</body>
</html>