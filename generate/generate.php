<?php

$id_branch_temp = 1;
$current_year = date("Y");
$total_year = 3;

$year_init = $current_year - $total_year;

$number_store = generateNumberStore();
$number_branch = generateNumberBranch();


for($i=1; $i<=$number_store; $i++){
	$store_name = "Tienda $i";
	$store_id = $i;

	for($j=1; $j<=$number_branch; $j++){
		$branch_id = $id_branch_temp;
		$branch_name = "Sucursal $branch_id";

		for($x=$year_init; $x<=$current_year; $x++){
			$year = $x;

			for($y=1; $y<=12; $y++){
				$month_id = $y;
				$month_name = getDisplayMonth($month_id);
				$amount = generateAmount();

				echo "INSERT INTO sale_master(store_id, store_description, branch_id, branch_description, month_sale, month_description, year_sale, amount) VALUES ($store_id, '$store_name', $branch_id, '$branch_name', $month_id, '$month_name', $year, $amount);<br>";
			}
		}

		$id_branch_temp++;
	}
    

}



function generateAmount(){
	return rand(10, 99)."00";
}

function generateNumberStore(){
    return rand(2, 5);
}

function generateNumberBranch(){
	return rand(1, 5);
}


function getDisplayMonth($month_number){

	$month_name = "";

	switch ($month_number) {
    case 1:
        $month_name = "Enero";
        break;
    case 2:
        $month_name = "Febrero";
        break;
    case 3:
        $month_name = "Marzo";
        break;
    case 4:
        $month_name = "Abril";
        break;
    case 5:
        $month_name = "Mayo";
        break;
    case 6:
        $month_name = "Junio";
        break;
    case 7:
        $month_name = "Julio";
        break;
    case 8:
        $month_name = "Agosto";
        break;
    case 9:
        $month_name = "Septiembre";
        break;
    case 10:
        $month_name = "Octubre";
        break;
    case 11:
        $month_name = "Noviembre";
        break;
    case 12:
        $month_name = "Diciembre";
        break;            
	}

	return $month_name;
}



?>