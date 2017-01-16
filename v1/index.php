<?php

error_reporting(-1);
ini_set('display_errors', 'On');

require_once '../include/db_handler.php';
require '.././libs/Slim/Slim.php';

\Slim\Slim::registerAutoloader();

$app = new \Slim\Slim();

/*
// Place By Description
$app->get('/place/:description', function($description) use ($app) {

    $db = new DbHandler();
    $response = $db->getPlaceByDescription($description);
    echoResponse(200, $response);
});

// All Places
$app->get('/place/', function() use ($app) {

    $db = new DbHandler();
    $response = $db->getAllPlace();
    echoResponse(200, $response);
});
*/

// All Years
$app->get('/year/', function() use ($app) {

    $db = new DbHandler();
    $response = $db->getAllYear();
});

// All Stores
$app->get('/store/', function() use ($app) {

    $db = new DbHandler();
    $response = $db->getAllStore();
});

// Store sales by year
$app->get('/store/year/:year', function($year) use ($app) {
    $db = new DbHandler();
    $response = $db->getSalesStoreByYear($year);
});

// Sales by year and store 
$app->get('/store/year/', function() use ($app) {
    $db = new DbHandler();
    $response = $db->getSalesByStoreAndYear();
});


/*
//Add Coupon
    $app->post('/coupon/add', function() use ($app) {
        verifyRequiredParams(array('description', 'image'));
        $description = $app->request->post('description');
        $image = $app->request->post('image');
        $db = new DbHandler();
        $response = $db->addCoupon($description, $image);
        echoResponse(200, $response);
    });
*/

function echoResponse($isError, $response) {
    $app = \Slim\Slim::getInstance();

    $app->status(200);

    if($isError){
        $app->status(500);
    }

    $app->contentType('application/json');

    echo json_encode($response);
}

function verifyRequiredParams($required_fields) {
    $error = false;
    $error_fields = "";
    $request_params = $_REQUEST;

    if ($_SERVER['REQUEST_METHOD'] == 'PUT') {
        $app = \Slim\Slim::getInstance();
        parse_str($app->request()->getBody(), $request_params);
    }
    foreach ($required_fields as $field) {
        if (!isset($request_params[$field]) || strlen(trim($request_params[$field])) <= 0) {
            $error = true;
            $error_fields .= $field . ', ';
        }
    }

    //error format of key null or empty
    if ($error) {
        $response = array();
        $app = \Slim\Slim::getInstance();

        $meta = array();
        $meta["status"] = "error";
        $meta["code"] = "1000";
        $meta["message"] = 'Campo requerido ' . substr($error_fields, 0, -2) . ', se encuentra vacio o nulo';
        $response["_meta"] = $meta;
        echoResponse(400, $response);
        $app->stop();
    }
}

$app->run();
?>