<?php
function is_leap_year($year)
{
  return $year % 400 == 0 || $year % 4 == 0 && $year % 100 != 0;
}
function get_month_days($month, $year)
{
  switch ($month) {
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      return 31;
    case 4:
    case 6:
    case 9:
    case 11:
      return 30;
    case 2:
      return is_leap_year($year) ? 29 : 28;
      break;
    default:
      return  0;
  }
}
?>

<!DOCTYPE html>
<html lang="de">

<head>
  <meta charset="UTF-8">
  <title>Monatstage korrekt</title>
</head>

<body>
  <h1>Monatstage korrekt</h1>
  <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
    <input name="monat" id="monat">
    <label for="monat">Monat</label>
    <br>
    <input name="jahr" id="jahr">
    <label for="jahr">Jahr</label>
    <br>
    <input name="sent" type="submit">
  </form>
  <p>
    <?php
    if (isset($_GET['monat']) && is_numeric($_GET['monat']) && isset($_GET['jahr']) && is_numeric($_GET['jahr'])) {
      $monat = $_GET['monat'];
      $jahr = $_GET['jahr'];
      echo "Der " . $monat . ". Monat des Jahres " . $jahr . " hat " . get_month_days($monat, $jahr) . " Tage";
    }
    ?>
  </p>
</body>

</html>