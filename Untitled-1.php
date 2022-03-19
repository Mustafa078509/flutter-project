<?php

include_once "config.php";




// check Request Type
if ($_SERVER['REQUEST_METHOD']== 'POST'){

 
    // Read DATA
    $name = $_POST['name'];
    $image = $_POST['image'];
    $price = $_POST['Price'];
    
    // Add config file
  
    // Insert Data4
    $sql = "INSERT INTO `cart`(`name`, `Price`,`image`) VALUES ('$name','$price','$image')";


    if (mysqli_query($conn, $sql)) {
        // print successfully 
        http_response_code(200);
        header('Content-Type:application/json');
        echo '{ "message": "created user successfully"}';



    } else {
        // print error 
        http_response_code(500);
        header('Content-Type:application/json');
        $error = mysqli_error($conn);
        echo '{ "message": '.$error.'}';
    }
    

        // close 
        mysqli_close($conn);

}else{
    http_response_code(404);
    header('Content-Type:application/json');
    echo '{ "message": "page not found"}';
}