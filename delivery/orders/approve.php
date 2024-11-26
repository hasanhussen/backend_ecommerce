<?php

include "../../connect.php";
include "../../sendnotification.php";

$orderid = filterRequest("ordersid");

$userid = filterRequest("usersid");

$deliveryid = filterRequest("deliveryid");

$data = array(
    "orders_status" => 3 , 
    "orders_delivery" => $deliveryid 
);

updateData("orders", $data, "orders_id = $orderid AND orders_status = 2");

// sendGCM("success" , "The Order Has been Approved" , "users$userid" , "none" , "refreshorderpending"); 

insertNotify("success", "Your order is on the way", $userid);
sendfcm("success", "Your order is on the way" , "users$userid" , "none",  "refreshorderpending"); 

sendfcm("warning" , "The Order Has been Approved by delivery  l". $deliveryid , "admin" , "none" , "none"); 
insertadminNotify("warning",  "The Order $orderid Has been Approved by delivery". $deliveryid);

sendfcm("warning" , "The Order Has been Approved by delivery  " . $deliveryid , "delivery" , "none" , "none"); 
