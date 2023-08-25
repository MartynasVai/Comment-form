<?php

class CommentsView extends Comments{

   public function showComments() {
   $comments = $this->getComments();
   //var_dump($results);
   echo json_encode($comments);
   
}}
?>