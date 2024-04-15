<?php

$host = "localhost";
$username = "root";
$password = ""; 
$database = "gasdb";

$dsn = "mysql:host=$host;dbname=$database;charset=utf8";
$options = array(
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
);

try {
    $connection = new PDO($dsn, $username, $password, $options);
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $name = $_POST['name'];
    $email = $_POST['email'];

    $sql = "INSERT INTO subscribers (username, name, email) VALUES (:username, :name, :email)";
    $statement = $connection->prepare($sql);
    $statement->bindParam(':username', $username);
    $statement->bindParam(':name', $name);
    $statement->bindParam(':email', $email);
    $statement->execute();


    echo '<script>alert("Εγγραφήκατε επιτυχώς!");</script>';
    header("Location: ../html/index.html");
    exit();
}

$connection = null;

?>
