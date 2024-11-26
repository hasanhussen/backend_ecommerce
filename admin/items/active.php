<?php

include '../../connect.php';

$table = "items";

$id = filterRequest("id");

$active = filterRequest("active");


   $data = array( 
    "items_active"       => $active
    );


updateData($table, $data, "items_id = $id");
