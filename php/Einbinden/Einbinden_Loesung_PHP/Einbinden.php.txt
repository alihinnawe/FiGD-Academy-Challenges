<!DOCTYPE html>
<html lang="de">
  <head>
    <meta charset="UTF-8">
    <title>PHP-Einbinden</title>
  </head>
  <body>
    <h1>
      <?php echo 
        "<em>\"Hallo Welt!\"</em>";
      ?>
    </h1>
    <h1>
      <?php echo 
        '<em>"Hallo Welt!"</em>';
      ?>
    </h1>
    <h1>
      <?=
        '<em>"Hallo Welt!"</em>';
      ?>
    </h1>
  </body>
</html>