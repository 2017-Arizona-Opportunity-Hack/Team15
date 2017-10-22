<html>
<head>
	<link rel="stylesheet" type="text/css" href="style.php"/>

	<div class="container4">
	<img src="logo.png" alt="logo" style="width:600px;height:400px;>
	</div>


</head>
<body>

Echo "<div class="container5">
	<form>
	  <h2> Enter date below(YYYY-MM-DD):</h2><br>
	  <div class ="temp123">
	  <input type="text" name="date" maxlength="40" size="35">
	  </div>
	</form>

<?php

echo $_POST['date'];
$date_return = $_REQUEST['date'];

$adultcount = 0;


// Create connection **DELETED MY CREDENTIALS**
$con=mysqli_connect("localhost","DB username","DB username password","DB name");

// Check connection
if (mysqli_connect_errno())
{
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

// This SQL statement selects ALL from the table 'Locations'
$sql1="SELECT DATE FROM parent1 WHERE DATE = '$date_return';";
$sql2="SELECT DATE FROM parent2 WHERE DATE = '$date_return';";
$sql3="SELECT DATE FROM other WHERE DATE = '$date_return';";
$sql4="SELECT DATE FROM relative_friend_transport WHERE DATE = '$date_return';";
$sql5="SELECT DATE FROM pa_cps_supervisor WHERE DATE = '$date_return';";
$sql6="SELECT DATE FROM child WHERE DATE = '$date_return';";


  if ($result1=mysqli_query($con,$sql1))
  {
  // Return the number of rows in result set
  $rowcount1=mysqli_num_rows($result1);
  $adultcount = $rowcount1 + $adultcount;
  mysqli_free_result($result1);
  }

  if ($result2=mysqli_query($con,$sql2))
  {
  // Return the number of rows in result set
  $rowcount2=mysqli_num_rows($result2);
  $adultcount = $rowcount2 + $adultcount;

  // Free result set
  mysqli_free_result($result2);
  }

    if ($result3=mysqli_query($con,$sql3))
  {
  // Return the number of rows in result set
  $rowcount3=mysqli_num_rows($result3);
    $adultcount = $rowcount3 + $adultcount;

  // Free result set
  mysqli_free_result($result3);
  }


   if ($result4=mysqli_query($con,$sql4))
  {
  // Return the number of rows in result set
  $rowcount4=mysqli_num_rows($result4);
    $adultcount = $rowcount4 + $adultcount;

  // Free result set
  mysqli_free_result($result4);
  }


   if ($result5=mysqli_query($con,$sql5))
  {
  // Return the number of rows in result set
  $rowcount5=mysqli_num_rows($result5);
    $adultcount = $rowcount5 + $adultcount;
    echo "<h2>Amount of adults on that day: ". $adultcount . "</h2>" ."<br/>";


  // Free result set
  mysqli_free_result($result5);
  }


   if ($result6=mysqli_query($con,$sql6))
  {
  // Return the number of rows in result set
  $rowcount6=mysqli_num_rows($result6);
  echo "<h2>Amount of children on that day: ". $rowcount6 . "</h2>" ."<br/>";
  // Free result set
  mysqli_free_result($result6);
  }



// Close connections
mysqli_close($con);
?>

</div>


</body>
</html>
