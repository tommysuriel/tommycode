<?php  

require("dbinfo.php"); 

// Initiating XML file, creating nodes

$dom = new DOMDocument("1.0");
$point = $dom->createElement("markers");
$parpoint = $dom->appendChild($point); 

// connecting to MySQL server

$connection=mysql_connect ("mysql4.000webhost.com", $username, $password);
if (!$connection) {  die('Could not connect: ' . mysql_error());} 

// Setting active MySQL database

$db_selected = mysql_select_db($database, $connection);
if (!$db_selected) {
  die ('Can\'t use db : ' . mysql_error());
} 

// Selecting all rows in table

$sqlquery = "SELECT * FROM markers WHERE 1";
$result = mysql_query($sqlquery);
if (!$result) {  
  die('Invalid query: ' . mysql_error());
} 

header("Content-type: text/xml"); 

// Loop through the rows, add XML nodes for each

while ($row = @mysql_fetch_assoc($result)){  

  $point = $dom->createElement("marker");  
  $newpoint = $parpoint->appendChild($point);   
  $newpoint->setAttribute("name",$row['name']);
  $newpoint->setAttribute("address", $row['address']);  
  $newpoint->setAttribute("lat", $row['lat']);  
  $newpoint->setAttribute("lng", $row['lng']);  
  $newpoint->setAttribute("type", $row['type']);
} 

echo $dom->saveXML();

?>
