<?php 

include "../../connect.php";

$table = "delivery";

$deliveryid   = filterRequest("deliveryid"); 
$name         = filterRequest("name");
$password     = sha1($_POST['password']);
$email        = filterRequest("email");
$phone        = filterRequest("phone");

$stmt = $con->prepare("SELECT * FROM delivery WHERE delivery_email = ? OR delivery_phone = ? ");
$stmt->execute(array($email, $phone));
$count = $stmt->rowCount();
if ($count > 0) {
    printFailure("PHONE OR EMAIL");
} else {

    $data = array(  
        "delivery_name" => $name,
        "delivery_password" =>$password,
        "delivery_email" => $email,
        "delivery_phone" => $phone,
    );
    updateData($table , $data , "delivery_id = $deliveryid");

}



