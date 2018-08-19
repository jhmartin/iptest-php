<?php
for ($x = 10000; $x > 0; $x--) {
  $results = file_get_contents('http://ip');
  echo "SIMPLE\t$results";
}

$ch = curl_init("http://ip");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
for ($x = 10000; $x > 0; $x--) {
 $results = curl_exec($ch);
 echo "PERSISTENT\t$results";
}
curl_close($ch);
?>
