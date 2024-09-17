<!DOCTYPE html>
<html lang="de"> 
  <head>
    <meta charset="UTF-8">
    <title>Schaltjahr Seite2</title> 
  </head>
  <body>
    <p>
    <?php       
      if (isset($_GET['jahr']) && is_numeric($_GET['jahr'])) {
        $jahr = $_GET['jahr'];

        if ($jahr % 400 == 0 || $jahr % 4 == 0 && $jahr % 100 != 0) {
          $ausgabe =  "$jahr ist ein Schaltjahr!";
        } else {
          $ausgabe =  "$jahr ist kein Schaltjahr!";
        }

      } else {
      
        $ausgabe = "<b>Eingabe fehlt oder ist fehlerhaft!</b>";
      }
      echo $ausgabe;
    ?>
    </p>
  </body>
</html>