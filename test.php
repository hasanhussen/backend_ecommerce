<?php

include "connect.php" ; 
include "sendnotification.php" ; 

// $table = "admin";

// $deliveryid         = '1';
// $email         ='admin@gmail.com';
// $password       = sha1('123456789admin');

// $data = array(  
// "admin_email" => $email, 
// "admin_password" => $password,
// );

// updateData($table , $data , "admin_id = $deliveryid");

// sendfcm("hi"  , "How Are You" , "users",'','');
 
// sendGCM("hi"  , "How Are You" , "users31" , "" , "",'ya29.c.c0ASRK0Gas5tXutSXrxSAfLBoX5yscNPaqD8vBq8GJFesFYDlOQHIV3sJQ-8hSBgP1o9eMXVmDFSqErfziNQQCfiVlCSi8vFkFvzT5Tp8U8pu6iwDAOUcgBfVLq4Emt4HIyHjT7rs6tiVWAogTqXmdv1hxCFqh21rJL6nyEp_DT6OtNA_Oosk5jbY4fRbsltnmaGLsa1YrihS44KYgW_YZ-eOKeodOSOzj5l-Lzl9LlCSQws6Ilzy1rvTYHzuJqZrCn1jtWOLudNTcdT1quoEsbsoEIg8Uud5vzh8UvgIWGZfnhHWH6YCIYky4cEEURSnoUSn1oJAbPMUzUnL93LJNDrfbzNQgVy4Hw3-OSHuQ_pscHeDInPAtmZML384PMpku1akvitwlX6-dSJtiobpd_ibOq4-MtB_vz9djdFS--YRygpJX5fuj7wrWllj4RXui3vg-5ptJz0U9mWjBiaq_-9pso1kh9Xy0vJ7jtlRmY-aaz_gmf6pZ7olBf9jclI8-sjadc4zY873xY6Xej7oF3fJFSf1Xm65BRj245JzIcFVBZjV592sBBFt-c-tYRS-JUUORzvO4dRO0zQ_2lk9VXroR4U64YzbpyWeOe1j8XUsOSak43yWXiMZ8250gaWMzW_hnmMosiZujasklFsje6XyccIv-nFZBxq0zWxdqUSgdjMpIF6t7wmQ-2QMVwaicZFJvphoSahm_dRBkgkRbBXzoBllVipzRw5ofvJOSFJy55tOYSft6JqnhWZYQ6up2FVsSVnuYVh47hBpevZc-qXxS8Rtm_t5zzZwzguOyfShUOY3Ic5ReXl8aQzMhnf-jsxeyQOxo1ZUcYtrtF55UjS9uQU481Ueuo3lWXYfjVfFV8ysW2ctUOts8J8SBJlY2XB9m4fzwUFf9re-qvV-WvZi9R-4vlJIlJcg7f1c0JordQxhV-uuOZ4JxJJYqW-WXajUa-eIw__hOs_af27iBnbQ6BRSBwIlXcui9z-Rc') ; 

// echo "Send"  ;


// function sendnotification() {
//     $accessToken='ya29.c.c0ASRK0Gas5tXutSXrxSAfLBoX5yscNPaqD8vBq8GJFesFYDlOQHIV3sJQ-8hSBgP1o9eMXVmDFSqErfziNQQCfiVlCSi8vFkFvzT5Tp8U8pu6iwDAOUcgBfVLq4Emt4HIyHjT7rs6tiVWAogTqXmdv1hxCFqh21rJL6nyEp_DT6OtNA_Oosk5jbY4fRbsltnmaGLsa1YrihS44KYgW_YZ-eOKeodOSOzj5l-Lzl9LlCSQws6Ilzy1rvTYHzuJqZrCn1jtWOLudNTcdT1quoEsbsoEIg8Uud5vzh8UvgIWGZfnhHWH6YCIYky4cEEURSnoUSn1oJAbPMUzUnL93LJNDrfbzNQgVy4Hw3-OSHuQ_pscHeDInPAtmZML384PMpku1akvitwlX6-dSJtiobpd_ibOq4-MtB_vz9djdFS--YRygpJX5fuj7wrWllj4RXui3vg-5ptJz0U9mWjBiaq_-9pso1kh9Xy0vJ7jtlRmY-aaz_gmf6pZ7olBf9jclI8-sjadc4zY873xY6Xej7oF3fJFSf1Xm65BRj245JzIcFVBZjV592sBBFt-c-tYRS-JUUORzvO4dRO0zQ_2lk9VXroR4U64YzbpyWeOe1j8XUsOSak43yWXiMZ8250gaWMzW_hnmMosiZujasklFsje6XyccIv-nFZBxq0zWxdqUSgdjMpIF6t7wmQ-2QMVwaicZFJvphoSahm_dRBkgkRbBXzoBllVipzRw5ofvJOSFJy55tOYSft6JqnhWZYQ6up2FVsSVnuYVh47hBpevZc-qXxS8Rtm_t5zzZwzguOyfShUOY3Ic5ReXl8aQzMhnf-jsxeyQOxo1ZUcYtrtF55UjS9uQU481Ueuo3lWXYfjVfFV8ysW2ctUOts8J8SBJlY2XB9m4fzwUFf9re-qvV-WvZi9R-4vlJIlJcg7f1c0JordQxhV-uuOZ4JxJJYqW-WXajUa-eIw__hOs_af27iBnbQ6BRSBwIlXcui9z-Rc';
//     $topic = 'user31';
//     $message = [
//         'message' => [
//             'topic' => $topic,
//             'notification' => [
//                 'title' => 'Your Title',
//                 'body' => 'Your Message Body'
//             ],
//             'data' => [
//                 'key' => 'value'
//             ]
//         ]
//     ];
    
//     $headers = [
//         'Authorization: Bearer ' . $accessToken,
//         'Content-Type: application/json'
//     ];
    
//     $ch = curl_init();
//     curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/v1/projects/ecommerce-d4136/messages:send');
//     curl_setopt($ch, CURLOPT_POST, true);
//     curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
//     curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
//     curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
//     curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($message));
    
//     $result = curl_exec($ch);
//     if ($result === FALSE) {
//         die('Curl failed: ' . curl_error($ch));
//     }
//     curl_close($ch);
    
//     echo $result;
// }

// sendnotification();

?>