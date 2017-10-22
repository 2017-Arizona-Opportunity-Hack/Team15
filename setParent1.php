<?php

// Create connection
$con=mysqli_connect("localhost","andrebm9_user","Igraduateasuin2018!","andrebm9_AFC");

// Check connection
if (mysqli_connect_errno())
{
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

// This SQL statement selects ALL from the table 'Locations'
$sql = "INSERT INTO parent1 (DATE, VID, PARENT1_FN, PARENT1_LN, TIME_IN, TIME_OUT)
VALUES ('1', '2', 'Westin', 'Chrechechen', '1000', '2000')";

if (mysqli_query($con, $sql)) {
    echo "New record created successfully";
}

// Close connections
mysqli_close($con);
?>
