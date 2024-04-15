<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gasdb";


$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}


$sql = "SELECT * FROM requests";
$result = $conn->query($sql);


$rows = '';
while ($row = $result->fetch_assoc()) {
  $name = $row['name'];
  $telephone = $row['telephone'];
  $department = $row['department'];
  $email = $row['email'];
  $subject = $row['subject'];
  $message = $row['message'];

  $rows .= "<tr>";
  $rows .= "<td>$name</td>";
  $rows .= "<td>$telephone</td>";
  $rows .= "<td>$department</td>";
  $rows .= "<td>$email</td>";
  $rows .= "<td>$subject</td>";
  $rows .= "<td>$message</td>";
  $rows .= "</tr>";
}


$conn->close();


echo $rows;
?>
