<?php

class Comments extends Dbh{

   protected function getComments() {

      $sql = "SELECT * FROM comments ORDER BY id DESC";
      $stmt = $this->connect()->query($sql);
      $results = $stmt->fetchAll();
      return $results;

   }
   
    protected function insertComment ($name, $email, $text, $date, $parent) {
   
      $sql = "INSERT INTO comments (name, email, text, date, parent) VALUES (?,?,?,?,?);";
      $stmt = $this->connect()->prepare($sql);
      $stmt->execute(array($name, $email, $text, $date, $parent));
   
   }
}
?>