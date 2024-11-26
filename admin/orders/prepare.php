<?php

include "../../connect.php";
include "../../sendnotification.php";

$orderid = filterRequest("ordersid");

$userid = filterRequest("usersid");

$type = filterRequest("ordertype");
if ($type  == "0") {
    $data = array(
        "orders_status" => 2
    );
} else {
    $data = array(
        "orders_status" => 4
    );
}


updateData("orders", $data, "orders_id = $orderid AND orders_status = 1");


// sendGCM("success" , "The Order Has been Approved" , "users$userid" , "none" , "refreshorderpending"); 

insertNotify("success", "The Order is ready.", $userid);

sendfcm("success", "The Order is ready.", $userid, "users$userid", "none",  "refreshorderpending");
 
if ($type  == "0") {
    sendfcm("warning", "there is a order awaiting your approval.", "delivery", "none", "refreshorderpending");
}

// insertNotify("success", "The Order Has been Approved", $userid, "users$userid", "none",  "refreshorderpending");


