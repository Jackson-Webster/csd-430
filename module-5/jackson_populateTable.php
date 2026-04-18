<?php
// Name: Jackson
// Assignment: Module 5 - Populate Table

$servername = "127.0.0.1:3309";
$username = "student1";
$password = "pass";
$dbname = "CSD430";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO JacksonStatesData (state_name, capital, population, region)
VALUES
('Colorado', 'Denver', 5773714, 'West'),
('Michigan', 'Lansing', 10050811, 'Midwest'),
('Florida', 'Tallahassee', 21944577, 'South'),
('Maryland', 'Annapolis', 6165129, 'Northeast'),
('Texas', 'Austin', 29527941, 'South'),
('California', 'Sacramento', 39538223, 'West'),
('New York', 'Albany', 20201249, 'Northeast'),
('Ohio', 'Columbus', 11799448, 'Midwest'),
('Georgia', 'Atlanta', 10711908, 'South'),
('Arizona', 'Phoenix', 7151502, 'West')";

if ($conn->query($sql) === TRUE) {
    echo "Records inserted successfully.";
} else {
    echo "Error inserting records: " . $conn->error;
}

$conn->close();
?>
