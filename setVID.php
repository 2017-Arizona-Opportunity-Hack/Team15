<?php

// Create connection
$con=mysqli_connect("localhost","andrebm9_user","Igraduateasuin2018!","andrebm9_AFC");

// Check connection
if (mysqli_connect_errno())
{
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

// This SQL statement selects ALL from the table 'Locations'
$sql = "INSERT INTO vid (DATE, VID, LOCATION)
VALUES ('1', '2', 'Westin')";

if (mysqli_query($con, $sql)) {
    echo "New record created successfully";
}

// Close connections
mysqli_close($con);
?>
