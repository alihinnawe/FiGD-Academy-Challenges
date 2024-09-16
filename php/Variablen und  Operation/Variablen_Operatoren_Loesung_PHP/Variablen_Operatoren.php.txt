<!DOCTYPE html>
<html lang="de">

<head>
  <meta charset="UTF-8">
  <title>PHP-Variablen, Operatoren</title>
</head>

<body>
  <?php // Aufgabe 01
  $name = 'Klaus';
  $kurs = 'Internetprogrammierung';
  $einrichtung = 'FiGD';
  echo $name . ' besucht den Kurs ' . $kurs . ' am ' . $einrichtung;
  echo '<br>';
  echo "$name besucht den Kurs $kurs am $einrichtung";
  echo '<br>';
  echo '<em>falsch:</em>';
  echo '<br>';
  echo '$name besucht den Kurs $kurs am $einrichtung';
  echo '<br>';
  echo '<hr>';
  ?>
  <?php // Aufgabe 02
  $a = 3;
  $b = 5;
  echo "$a mal $b ist " . ($a * $b);
  echo '<br>';
  $c = $a * $b;
  echo "$a mal $b ist $c";
  echo '<br>';
  echo '<em>falsch:</em>';
  echo '<br>';
  echo "$a mal $b ist $a * $b ";
  echo '<hr>';
  ?>
  <?php // Aufgabe 03
  $nr = 1;
  echo '<em>mit Startwert 1:</em>';
  echo '<br>';
  echo '<h2>Kapitel ' . $nr++ . '</h2>';
  echo '<h2>Kapitel ' . $nr++ . '</h2>';
  echo '<h2>Kapitel ' . $nr++ . '</h2>';
  ?>
  <?php // Aufgabe 03
  $nr = 0;
  echo '<em>mit Startwert 0:</em>';
  echo '<br>';
  echo '<h2>Kapitel ' . ++$nr . '</h2>';
  echo '<h2>Kapitel ' . ++$nr . '</h2>';
  echo '<h2>Kapitel ' . ++$nr . '</h2>';
  echo '<hr>';
  ?>
  <?php // Aufgabe 04
  $mix = 'false'; // Text ist irrelevant
  echo '<em>mit nicht leerer Zeichenkette:</em>';
  echo '<br>';
  echo $mix;
  echo '<br>';
  var_dump($mix);
  echo '<br>';
  $mix = (bool) $mix; // true, da Zeichenkette nicht leer
  echo $mix; // bei true wird '1' ausgegeben
  echo '<br>';
  var_dump($mix);
  echo '<br>';
  ?>
  <?php // Aufgabe 04
  $mix = ''; //leere Zeichenkette
  echo '<br>';
  echo '<em>mit  leerer Zeichenkette:</em>';
  echo '<br>';
  echo $mix;
  echo '<br>';
  var_dump($mix);
  echo '<br>';
  $mix = (bool) $mix; // false, da leere Zeichenkette
  echo $mix; // bei false keine Ausgabe
  echo '<br>';
  var_dump($mix);
  ?>
</body>

</html>