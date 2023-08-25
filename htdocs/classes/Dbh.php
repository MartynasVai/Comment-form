<?php

class Dbh {
   
   private $host = "localhost"; // Use Local Host Only  
   private $user = "id21181054_martis"; 
   private $password = "Martynas1!";  
   private $dbName = "id21181054_database";  
   
   protected function connect() {
   
      $dsn = 'mysql:host=' . $this->host . ';dbname=' . $this->dbName;
      $pdo = new PDO($dsn, $this->user, $this->password);
      //$pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
      return $pdo;
   }
}