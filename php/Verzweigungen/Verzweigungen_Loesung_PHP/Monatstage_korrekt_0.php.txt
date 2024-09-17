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
    function is_leap_year($year)
    {
      return $year % 400 == 0 || $year % 4 == 0 && $year % 100 != 0;
    }

    if (isset($_GET['sent'])) {
      if (isset($_GET['monat']) && is_numeric($_GET['monat']) && isset($_GET['jahr']) && is_numeric($_GET['jahr'])) {
        $monat = $_GET['monat'];
        $jahr = $_GET['jahr'];
        switch ($monat) {
          case 1:
          case 3:
          case 5:
          case 7:
          case 8:
          case 10:
          case 12:
            $maxTage = 31;
            break;
          case 4:
          case 6:
          case 9:
          case 11:
            $maxTage = 30;
            break;
          case 2:
            $maxTage = is_leap_year($jahr) ? 29 : 28;
            break;
          default:
            $maxTage =  0;
        }
        echo "Der " . $monat . ". Monat des Jahres " . $jahr . " hat " . $maxTage . " Tage";
      }
    }
    ?>
  </p>
</body>

</html>