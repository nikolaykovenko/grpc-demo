<?php

require_once 'vendor/autoload.php';


//$driver = new \Demo\Driver();
//$driver->setName('Nickk');
//$driver->setPhoneNumber('22-22-22');

$client = new \Demo\DriverServiceClient('localhost:50051', [
    'credentials' => Grpc\ChannelCredentials::createInsecure(),
]);



$request = new \Demo\GetByIdRequest(['id' => 12]);

$driver = $client->getById($request)->wait();

var_dump($driver);