<?php 
include ('src/autoLoader.php');


   $name = $_POST["name"];
   $email = $_POST["email"];
   $text = $_POST["text"];
   $parent = $_POST["parent"];

   $comment = new CommentsController($name, $email, $text, $parent);
   $comment->submitComment();


?>