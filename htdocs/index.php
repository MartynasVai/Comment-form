<?php 
include ('src/autoLoader.php');



?>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<link href="css/style.css" rel="stylesheet">

<title>Page Title</title>
</head>
<body>
<div class="container">
<form id="frm-comment">
  <input type="hidden" id="name" name="name" value="">
  <input type="hidden" id="email" name="email" value=""><br>
  <input type="hidden" id="text" name="text" value=""><br>
  <input type="hidden" id="parent" value="0" name="parent">
  <input type="button" onclick="submitComment()" id="#submitButton" value="Publish" name="comment">
</form> 
<form class>
<div class="col-md-1"><label for='name0' >Name*</label></div>
<div class="col-md-5"><input type='text' class="textinput" name='name0' id='name0' value=''></div>
<div class="col-md-1"><label for='email0'>Email*</label></div>
<div class="col-md-5"><input type='text' class="textinput" name='email0' id='email0' value=''></div><br><br>
<div class="col-md-1"><label for='text0'>Comment*</label></div>
<div class="col-md-11"><textarea name = 'text0' id='text0' value=''></textarea><br></div>
   <input type='hidden' value='0'>
<div class="col-md-1"></div><div class="col-md-1"><input type='button' class="btn btn-light" onclick='submitReply(0)' id='#submitButton' value='Publish'></div>
   <div id="comment-message0" class="comment-message col-md-10"> </div>
   </form><h2><b  id="commentCount">Comments</b></h2></div>
   
<div id="output" class="container">
    
</div>
</div>
<script src="src/comments.js">
<?php 
?>


</body>

<script type="text/javascript" >

</script>
</html>