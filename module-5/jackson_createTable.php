<?php
// Name: Jackson
// Assignment: Module 5 - Create Table

$servername = "127.0.0.1:3309";
$username = "student1";
$password = "pass";
$dbname = "CSD430";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "CREATE TABLE JacksonStatesData (
    state_id INT AUTO_INCREMENT PRIMARY KEY,
    state_name VARCHAR(50),
    capital VARCHAR(50),
    population INT,
    region VARCHAR(50)
)";

if ($conn->query($sql) === TRUE) {
    echo "Table JacksonStatesData created successfully.";
} else {
    echo "Error creating table: " . $conn->error;
}

$conn->close();
?>
