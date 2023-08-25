<?php

class CommentsController extends Comments{

   private $name;
   private $email;
   private $text;
   private $parent;

   public function __construct($name,$email,$text,$parent){
      
      $this->name = $name;
      $this->email = $email;
      $this->text = $text;
      $this->parent = $parent;

   }

   public function submitComment() {

      $errors = $this->validation();
      if($errors=="") {
         
         $date = date('Y-m-d');
         echo("success");
         $this->insertComment ($this->name, $this->email, $this->text, $date, $this->parent);

      }

      echo $errors;
      return false;

   }

   private function validation() {
      
      $result="";
      if(empty($this->name)||empty($this->email)||empty($this->text)) {
         $result .= 'Please fill out all fields ';
      }
      if (!preg_match("/^[a-zA-Z-' ]*$/",$this->name)) {
         $result .= 'Invalid name ';
       }
      if(strpos($this->email, "@") == false && strpos($this->email, ".") == false ){
         $result .= 'Please enter a valid email';
     }
      
      return $result;

   }
}
?>