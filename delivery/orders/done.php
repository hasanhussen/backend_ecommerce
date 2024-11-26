<?php

include "../../connect.php";
include "../../sendnotification.php";

$orderid = filterRequest("ordersid");

$userid = filterRequest("usersid");

$data = array(
    "orders_status" => 4
);

updateData("orders", $data, "orders_id = $orderid AND orders_status = 3");

// sendGCM("success" , "The Order Has been Approved" , "users$userid" , "none" , "refreshorderpending"); 

insertNotify("success", "Your Order Has been deliverd", $userid, "users$userid", "none",  "refreshorderpending");
sendfcm("success", "Your Order Has been deliverd" , "users$userid" , "none",  "refreshorderpending"); 

sendfcm("warning" , "The Order Has been deliverd to The Customer" , "admin" , "none" , "none"); 
insertadminNotify("warning",   "The Order $orderid Has been deliverd to The Customer");