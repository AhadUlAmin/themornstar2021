<?php
class Install{
    public function init($servername,$username,$password,$database){
        // Creating connection
        $conn = mysqli_connect($servername, $username, $password);
        // Checking connection
        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }

        // Creating a database named newDB
        $sql = "CREATE DATABASE ".$database;


        if (mysqli_query($conn, $sql)) {
            echo "Database created successfully with the name".$database;
            $conn =new mysqli('localhost', 'root', '' , $database);
            $query = '';
        $sqlScript = file('database.sql');
        foreach ($sqlScript as $line)	{
            
            $startWith = substr(trim($line), 0 ,2);
            $endWith = substr(trim($line), -1 ,1);
            
            if (empty($line) || $startWith == '--' || $startWith == '/*' || $startWith == '//') {
                continue;
            }
                
            $query = $query . $line;
            if ($endWith == ';') {
                mysqli_query($conn,$query) or  die('<div class="error-response sql-import-response">Problem in executing the SQL query <b>' . $query. '</b></div>');
                $query= '';		
            }
        }
        echo '<div class="success-response sql-import-response">SQL file imported successfully</div>';
         header('Location:'.ROOT);
        } else {

            echo "Message: " . mysqli_error($conn);


        }

        // closing connection
        mysqli_close($conn);

    }
    
}

