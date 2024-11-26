<?php 

include "../../connect.php";
include "../../sendnotification.php";


$title = filterRequest("title");

$body = filterRequest("body");

sendfcm("$title", "$body" , "users" , "none",  "none"); 
echo json_encode(array("status" => "success"));

?>