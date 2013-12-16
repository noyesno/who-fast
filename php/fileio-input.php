<?

$fp = fopen('../data/file.txt', 'r');
while($line = fgets($fp,4096)){
  print($line);
}
fclose($fp);


?>
