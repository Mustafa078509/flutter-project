<?php

include_once "config.php";


if ($_SERVER['REQUEST_METHOD']== 'GET'){



$sql = "SELECT  `name`, `image`, `detals`, `Price` FROM `headphone` WHERE 1";

$data= array();

$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  // output data of each row
  while($row = mysqli_fetch_assoc($result)) {

    $data[]=$row;
 
  }

} else {
  echo "0 results";
}
   echo json_encode($data);

}
mysqli_close($conn);
?>




