<!DOCTYPE html>
<html lang="de"> 
  <head>
    <meta charset="UTF-8">
    <title>Monatstage</title> 
  </head>

  <body>
    <h1>Monatstage</h1>
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
      <label for="monat">Monat</label>
      <input name="monat" id="monat">
      <input name="sent" type="submit">
    </form>
    <p>
    <?php       
  if (isset($_GET['sent'])) {  
    if (isset($_GET['monat']) && is_numeric($_GET['monat'])) {  
      $monat = $_GET['monat'];
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
          $maxTage = 28;
          break;
        default:
          $maxTage =  0;
      }    
      echo "Der ".$monat.". Monat hat ".$maxTage." Tage";
    } 
  } 
?>
    </p>   
  </body>
</html>