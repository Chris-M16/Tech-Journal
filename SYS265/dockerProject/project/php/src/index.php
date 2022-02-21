<?php
//These are the defined authentication environment in the db service

// The MYSQL service named in the docker-compose.yml
$host = 'db';

// Database username
$user = 'MYSQL_USER';

// database user password
$pass = 'MYSQL_PASSWORD';

// database name
$mydatabase = 'MYSQL_DATABASE';

// check the MySQL connection status
$conn = new mysqli($host, $user, $pass, $mydatabase);

$sql = 'SELECT * FROM users';

if ($result = $conn->query($sql)) {
    while ($data = $result->fetch_object()) {
        $users[] = $data;
    }
}

foreach ($users as $user) {
    echo "<br>";
    echo $user->username . " " . $user->password;
    echo "<br>";
}
?>
