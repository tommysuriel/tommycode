<?php

require("dbinfo.php"); 
 // Connect to the database
 $dbhost = 'mysql4.000webhost.com';
 $connection = mysql_connect("$dbhost","$username","$password");
 if (!$connection)
 {
     die('Could not connect: ' . mysql_error());
 }
 $db = mysql_select_db("$database", $connection);
 if (!$db)
 {
     die('Couldn\'t select database.'. mysql_error());
 }
 
 echo 'You are succesfully connected';
?>
