<?php 

include "../../connect.php";
include "../../sendnotification.php";

$ordersid = filterRequest("ordersid") ; 

$userid = filterRequest("usersid");

deleteData("orders" , "orders_id = $ordersid AND orders_status = 0"); 

insertNotify("success", "The Order Has been Rejected", $userid);
sendfcm("success", "The Order Has been Rejected", "users$userid", "none",  "refreshorderpending");