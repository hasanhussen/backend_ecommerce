<?php

include '../../connect.php';

$table = "items";

$id = filterRequest("id");

$name = filterRequest("name");

$namear = filterRequest("namear"); 

$desc = filterRequest("desc"); 
$descar = filterRequest("descar"); 

$count = filterRequest("count"); 
$price = filterRequest("price"); 
$discount = filterRequest("discount"); 

$catid = filterRequest("catid"); 

$imageold  = filterRequest("imageold");


$res =   imageUpload("../../upload/items", "files");

if ($res == "empty") {
    $data = array( 
        "items_name"       => $name,
        "items_name_ar"    => $namear,
        "items_desc"            => $desc,
        "items_desc_ar"         => $descar,
        "items_count"           => $count,
        "items_price"           => $price,
        "items_discount"        => $discount,
        "items_cat"             => $catid 
        );
} else {
   deleteFile("../../upload/categories"  , $imageold) ; 
   $data = array( 
    "items_name"       => $name,
    "items_name_ar"    => $namear,
    "items_desc"            => $desc,
    "items_desc_ar"         => $descar,
    "items_count"           => $count,
    "items_price"           => $price,
    "items_discount"        => $discount,
    "items_image"           => $res,
    "items_cat"             => $catid 
    );
}



updateData($table, $data, "items_id = $id");
