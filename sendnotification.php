<?php
require 'vendor/autoload.php';

use Google\Client as GoogleClient;

function  sendfcm($title, $message, $topic,$pageid, $pagename)
{

    $url = "https://fcm.googleapis.com/v1/projects/projectId/messages:send";
     
    //$credentialsFilePath = "adminsdkfilename.json"; // this file  uplade is loaded from google cloud  generate key in your projects 

    $client = new GoogleClient();

    $client->setAuthConfig($credentialsFilePath);


    $client->addScope('https://www.googleapis.com/auth/firebase.messaging');
    $client->fetchAccessTokenWithAssertion();

    $token = $client->getAccessToken();

    $access_token = $token['access_token'];


    $headers = [
        "Authorization: Bearer $access_token",
        "Content-Type: application/json"
    ];


    $data = [
        "message" => [
            "topic" => $topic,
            "notification" => [
                "title" => $title,
                "body" => $message
            ],
            "android" => [
                "priority" => "high",
                "notification" => [
                    "click_action" => "FLUTTER_NOTIFICATION_CLICK",
                    "sound" => "default"
                ]
            ],
            "data" => [
                "pageid" => $pageid,
                "pagename" => $pagename
            ]
        ]
    ];
    $payload = json_encode($data);

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
    curl_setopt($ch, CURLOPT_VERBOSE, true);

    $response = curl_exec($ch);
    $err = curl_error($ch);

    curl_close($ch);

    if ($err) {
        return $err;
    } else {
        return $response;
    }
}
