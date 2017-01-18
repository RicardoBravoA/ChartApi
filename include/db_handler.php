<?php

class DbHandler {

    private $conn;

    function __construct() {
        require_once dirname(__FILE__) . '/db_connect.php';
        $db = new DbConnect();
        $this->conn = $db->connect();
    }


    /*
    // Places By Description
    public function getPlaceByDescription($description) {

        if($description=='All'){
            $description='';
        }

        $response = array();
        $stmt = $this->conn->prepare("SELECT place_id, description FROM place 
              WHERE description LIKE '%$description%'");
        $stmt->execute();
        $result = $stmt->get_result();
        $stmt->close();
        $data = array();

        if($result->num_rows >0){

            while ($dataQuery = $result->fetch_assoc()) {
                $tmp = array();
                $tmp["place_id"] = $dataQuery['place_id'];
                $tmp["description"] = $dataQuery['description'];
                array_push($data, $tmp);
            }


            $meta = array();
            $meta["status"] = "success";
            $meta["code"] = "200";
            $response["_meta"] = $meta;
            $response["data"] = $data;

        }else{
            $meta = array();
            $meta["status"] = "error";
            $meta["code"] = "100";
            $meta["message"] = "No existe información";
            $response["_meta"] = $meta;
        }
        return $response;
    }
    */

    // All Years
    public function getAllYear() {

        $response = array();
        $stmt = $this->conn->prepare("SELECT DISTINCT year_sale FROM sale_master ORDER BY year_sale");
        $stmt->execute();
        $result = $stmt->get_result();
        $stmt->close();
        $data = array();
        $error = false;

        if($result->num_rows >0){

            while ($dataQuery = $result->fetch_assoc()) {
                $tmp = array();
                $tmp["year_sale"] = $dataQuery['year_sale'];
                array_push($data, $tmp);
            }

            $response["data"] = $data;
            $error = false;

        }else{
            $meta = array();
            $meta["status"] = "error";
            $meta["code"] = "100";
            $meta["message"] = "No existe información";
            $response["_meta"] = $meta;
            $error = true;
        }

        echoResponse($error, $response);
    }

    // All Years
    public function getAllStore() {

        $response = array();
        $stmt = $this->conn->prepare("SELECT DISTINCT store_id, store_description FROM sale_master ORDER BY store_description");
        $stmt->execute();
        $result = $stmt->get_result();
        $stmt->close();
        $data = array();
        $error = false;

        if($result->num_rows >0){

            while ($dataQuery = $result->fetch_assoc()) {
                $tmp = array();
                $tmp["store_id"] = $dataQuery['store_id'];
                $tmp["store_description"] = $dataQuery['store_description'];
                array_push($data, $tmp);
            }

            $response["data"] = $data;
            $error = false;

        }else{
            $meta = array();
            $meta["status"] = "error";
            $meta["code"] = "100";
            $meta["message"] = "No existe información";
            $response["_meta"] = $meta;
            $error = true;
        }

        echoResponse($error, $response);
    }

    // Store sales by year
    public function getSalesStoreByYear($year) {
        $response = array();
        $error = false;
        $stmt = $this->conn->prepare("SELECT DISTINCT store_id, store_description, year_sale, SUM(amount) as amount FROM sale_master WHERE year_sale = ? GROUP BY store_id, store_description, year_sale order by store_description");
        $stmt->bind_param("s", $year);
        if($stmt->execute()){
            $stmt->bind_result($store_id, $store_description, $year_sale, $amount);
            $stmt->store_result();
            if($stmt->num_rows>0){
                $data = array();
                while ($stmt->fetch()) {
                    $tmp = array();
                    $tmp["store_id"] = $store_id;
                    $tmp["store_description"] = $store_description;
                    $tmp["year_sale"] = $year_sale;
                    $tmp["amount"] = $amount;
                    array_push($data, $tmp);
                }
                /*
                $_meta = array();
                $_meta["status"]="success";
                $_meta["code"]="200";
                $response["_meta"] = $_meta;
                */
                $error = false;
                $response["data"] = $data;
            }else{
                $meta = array();
                $meta["status"] = "error";
                $meta["code"] = "101";
                $response["_meta"] = $meta;
                $error = true;
            }
        }else{
            $meta = array();
            $meta["status"] = "error";
            $meta["code"] = "100";
            $response["_meta"] = $meta;
            $error = true;
        }
        echoResponse($error, $response);
    }

    // Store sales by year
    public function getSalesByStoreAndYear() {

        $response = array();
        $meta = array();
        $stmtYear = $this->conn->prepare("SELECT DISTINCT year_sale FROM sale_master ORDER BY year_sale");
        $stmtYear->execute();
        $resultYear = $stmtYear->get_result();
        $stmtYear->close();
        $data = array();
        $yearArray = array();
        $responseTotal = array();
        $myResponse = array();
        $error = false;

        if($resultYear->num_rows >0){

            while ($dataQueryYear = $resultYear->fetch_assoc()) {
                $year = $dataQueryYear['year_sale'];
                $data["year"] = $year;

                // get stores
                $stmtStore = $this->conn->prepare("SELECT DISTINCT store_id, store_description, year_sale, SUM(amount) as amount FROM sale_master WHERE year_sale = ? 
                            GROUP BY store_id, store_description, year_sale order by store_description");
                $stmtStore->bind_param("s", $year);
                if($stmtStore->execute()){
                    $stmtStore->bind_result($store_id, $store_description, $year_sale, $amount);
                    $stmtStore->store_result();
                    if($stmtStore->num_rows>0){
                        $dataStore = array();
                        while ($stmtStore->fetch()) {
                            $tmp = array();
                            $tmp["store_id"] = $store_id;
                            $tmp["store_description"] = $store_description;
                            $tmp["year_sale"] = $year_sale;
                            $tmp["amount"] = $amount;
                            array_push($dataStore, $tmp);
                            $data["store"] = $dataStore;
                        }
                        array_push($responseTotal, $data);
                        $myResponse["data"] = $responseTotal;
                    }else{
                        $meta = array();
                        $meta["status"] = "error";
                        $meta["code"] = "101";
                        $myResponse["_meta"] = $meta;
                        $error = true;
                    }
                }else{
                    $meta = array();
                    $meta["status"] = "error";
                    $meta["code"] = "100";
                    $myResponse["_meta"] = $meta;
                    $error = true;
                }

            }
            
            $error = false;

        }else{
            $meta["status"] = "error";
            $meta["code"] = "100";
            $meta["message"] = "No existen años de ventas";
            $myResponse["_meta"] = $meta;
            $error = true;
        }

        echoResponse($error, $myResponse);

    }

    public function getYearSaleByStore($storeId){
        $response = array();
        $error = false;
        $stmt = $this->conn->prepare("SELECT store_id, year_sale, SUM(amount) FROM sale_master WHERE store_id = ? GROUP BY store_id, year_sale");
        $stmt->bind_param("s", $storeId);
        if($stmt->execute()){
            $stmt->bind_result($store_id, $year_sale, $amoun);
            $stmt->store_result();
            if($stmt->num_rows>0){
                $data = array();
                while ($stmt->fetch()) {
                    $tmp = array();
                    $tmp["store_id"] = $store_id;
                    $tmp["year_sale"] = $year_sale;
                    $tmp["amount"] = $amoun;
                    array_push($data, $tmp);
                }
                $error = false;
                $response["data"] = $data;
            }else{
                $meta = array();
                $meta["status"] = "error";
                $meta["code"] = "101";
                $response["_meta"] = $meta;
                $error = true;
            }
        }else{
            $meta = array();
            $meta["status"] = "error";
            $meta["code"] = "100";
            $response["_meta"] = $meta;
            $error = true;
        }
        echoResponse($error, $response);

    }

    public function isError(){
        return $error;
    }

    function echoResponse($isError, $response) {
        $app = \Slim\Slim::getInstance();

        $app->status(200);

        if($isError){
            $app->status(500);
        }

        $app->contentType('application/json');

        echo json_encode($response);
    }


}

?>
