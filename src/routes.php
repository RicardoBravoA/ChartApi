<?php
/**
 * Created by PhpStorm.
 * User: Carlos Leonardo Camilo Vargas Huamán
 * Date: 27/04/16
 * Time: 05:02 PM
 */

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

spl_autoload_register(function ($classname) {
    require("../src/classes/" . $classname . ".php");
});

$app->get('/year', function (Request $request, Response $response) {
    $mapper = new StoreMapper($this->db);
    $users = $mapper->getAllYear();

    $response->getBody()->write(json_encode($users["response"]));
    $newResponse = $response->withStatus($users["errorCode"])
        ->withHeader('Content-Type', 'application/json; charset=utf-8');

    return $newResponse;
});


// All Stores
$app->get('/store', function (Request $request, Response $response) {

    $mapper = new StoreMapper($this->db);
    $users = $mapper->getAllStore();

    $response->getBody()->write(json_encode($users["response"]));
    $newResponse = $response->withStatus($users["errorCode"])
        ->withHeader('Content-Type', 'application/json; charset=utf-8');

    return $newResponse;
});


// Store sales by year
$app->get('/store/year[/{year}]', function (Request $request, Response $response, $args) {

    $mapper = new StoreMapper($this->db);
    $users = $mapper->getSalesStoreByYear($args['year']);

    $response->getBody()->write(json_encode($users["response"]));
    $newResponse = $response->withStatus($users["errorCode"])
        ->withHeader('Content-Type', 'application/json; charset=utf-8');

    return $newResponse;
});

//
//// Store sales by store group by year
//$app->get('/store/:id_store/year', function($id_store) use ($app) {
//    $db = new DbHandler();
//    $response = $db->getSalesStore($id_store);
//});
//
//// Sales by year and store
//$app->get('/store/year/', function() use ($app) {
//    $db = new DbHandler();
//    $response = $db->getSalesByStoreAndYear();
//});
//
//// sales of year by store
//$app->get('/store/:storeId', function($storeId) use ($app) {
//    $db = new DbHandler();
//    $response = $db->getYearSaleByStore($storeId);
//});
//
//
///*
////Add Coupon
//    $app->post('/coupon/add', function() use ($app) {
//        verifyRequiredParams(array('description', 'image'));
//        $description = $app->request->post('description');
//        $image = $app->request->post('image');
//        $db = new DbHandler();
//        $response = $db->addCoupon($description, $image);
//        echoResponse(200, $response);
//    });
//*/
//
//function echoResponse($isError, $response) {
//    $app = \Slim\Slim::getInstance();
//
//    $app->status(200);
//
//    if($isError){
//        $app->status(500);
//    }
//
//    $app->contentType('application/json');
//
//    echo json_encode($response);
//}
//
//function verifyRequiredParams($required_fields) {
//    $error = false;
//    $error_fields = "";
//    $request_params = $_REQUEST;
//
//    if ($_SERVER['REQUEST_METHOD'] == 'PUT') {
//        $app = \Slim\Slim::getInstance();
//        parse_str($app->request()->getBody(), $request_params);
//    }
//    foreach ($required_fields as $field) {
//        if (!isset($request_params[$field]) || strlen(trim($request_params[$field])) <= 0) {
//            $error = true;
//            $error_fields .= $field . ', ';
//        }
//    }
//
//    //error format of key null or empty
//    if ($error) {
//        $response = array();
//        $app = \Slim\Slim::getInstance();
//
//        $meta = array();
//        $meta["status"] = "error";
//        $meta["code"] = "1000";
//        $meta["message"] = 'Campo requerido ' . substr($error_fields, 0, -2) . ', se encuentra vacio o nulo';
//        $response["_meta"] = $meta;
//        echoResponse(400, $response);
//        $app->stop();
//    }
//}
//




