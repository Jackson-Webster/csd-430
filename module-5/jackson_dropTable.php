<?php
// Name: Jackson
// Assignment: Module 5 - Drop Table

$servername = "127.0.0.1:3309";
$username = "student1";
$password = "pass";
$dbname = "CSD430";

$conn = new mysqli($servername, $username, $password, $dbname);

$sql = "DROP TABLE JacksonStatesData";

if ($conn->query($sql) === TRUE) {
    echo "Table dropped successfully.";
} else {
    echo "Error dropping table: " . $conn->error;
}

$conn->close();
?>
