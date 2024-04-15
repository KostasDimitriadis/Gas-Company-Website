<?php
// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Retrieve the form data
  $name = $_POST['name'];
  $telephone = $_POST['telephone'];
  $department = $_POST['department'];
  $email = $_POST['email'];
  $subject = $_POST['subject'];
  $message = $_POST['message'];

  // Database connection parameters
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "gasdb";

  // Create a new MySQLi instance and connect to the database
  $conn = new mysqli($servername, $username, $password, $dbname);

  // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  // Prepare the SQL statement to insert the form data into the table
  $sql = "INSERT INTO requests (name, telephone, department, email, subject, message) VALUES (?, ?, ?, ?, ?, ?)";

  // Prepare the statement
  $stmt = $conn->prepare($sql);

  // Bind the parameters and execute the statement
  $stmt->bind_param("ssssss", $name, $telephone, $department, $email, $subject, $message);
  $stmt->execute();

  // Close the statement and database connection
  $stmt->close();
  $conn->close();

  echo '<script>alert("Tο μήνυμα σας στάλθηκε με επιτυχία !");</script>';
  header("Location: ../html/contact.html");
  exit();
}
?>
