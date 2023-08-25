
    function postReply(commentId) {


    var hideReplies =document.getElementsByClassName("comment-message");
        for(var i = 0; i < hideReplies.length; i++){
        hideReplies[i].innerHTML = " "; 
    }

    var hide = document.getElementsByClassName("formreply");
        for(var i = 0; i < hide.length; i++){
        hide[i].style.display = "none"; 
    }


    document.getElementById("formreply"+commentId).style.display = "block";
    }
$(document).ready(function () {
    listComment();
});

function submitComment(id) {

    $("#comment-message").css('display', 'none');
    var str = $("#frm-comment").serialize();

    $.ajax({
        url: "addComment.php",
        data: str,
        type: 'post',
        success: function (response) {

        //var result = eval('(' + response + ')');
        if (response =="success") {
            listComment();
        } else {
            //alert(response);
            document.getElementById("comment-message"+id).style.display = "block";
            document.getElementById("comment-message"+id).innerHTML = response;
            return false;
            }
        }
    });
}

function submitReply(id){

    document.getElementById("email").value = document.getElementById("email"+id).value;
    document.getElementById("name").value = document.getElementById("name"+id).value;
    document.getElementById("text").value = document.getElementById("text"+id).value;
    document.getElementById("parent").value = id;

    submitComment(id)
}


function listComment() {

$.post("listComments.php",
function (data) {

    var data = JSON.parse(data);
    document.getElementById("commentCount").innerHTML =data.length + " Comments";
    var comments = "";
    var replies = "";
    var item = "";
    var parent = -1;
    var results = new Array();
    var commentCount=0;

    var list = $("<ul class='outer-comment'>");
    var item = $("<li>").html(comments);

    for (var i = 0; (i < data.length); i++) {

        var commentId = data[i][0];
        parent = data[i][5];

        if (parent == "0")
            {

            comments = "<div class='well'><div>"+
            "<div class='commentinfo'><div> <b>" + data[i][2] + " </b><span>" + data[i][4] + "</span></div>" +
            "<div class='reply'<a class='btn-reply float-end' onClick='postReply(" + commentId + ")'>Reply</a></div></div><br>"+
            "<div>" + data[i][3] + "</div>"+
            "</div></div>"+
            "<div  class='formreply' id='formreply"+ commentId +"'><form>"+
            "<div class='col-md-1'><label for='name"+ commentId +"'>Name:</label></div>"+
            "<div class='col-md-5'><input type='text' class='textinput' name='name"+ commentId +"' id='name" + commentId + "' value=''></div>"+
            "<div class='col-md-1'><label for='email"+ commentId +"'>Email:</label></div>"+
            "<div class='col-md-5'><input type='text' class='textinput' name='email"+ commentId +"' id='email" + commentId + "' value=''></div><br><br>"+
            "<div class='col-md-1'><label for='text"+ commentId +"'>Last name:</label></div>"+
            "<div class='col-md-11'><textarea name = 'text"+ commentId +"' id='text" + commentId + "' value=''></textarea><br></div>"+
            "<input type='hidden' value='" + commentId + "'>"+
            "<div class='col-md-1'></div><div class='col-md-1'><input type='button' class='btn btn-light' onclick='submitReply(" + commentId + ")' id='#submitButton' value='Publish'></div>"+
            "<div id='comment-message" + commentId + "' class='comment-message col-md-10'> </div>"+
            "</form></div> ";

            var item = $("<li>").html(comments);
            list.append(item);
            var reply_list = $('<ul>');
            item.append(reply_list);
            listReplies(commentId, data, reply_list);

            }
        }
    $("#output").html(list);
    });
function listReplies(commentId, data, list) {

    for (var i = 0; (i < data.length); i++) {

        if (commentId == data[i]['parent']) {

            var comments = "<div class='well'>"+
            " <div><div> <b>" + data[i][2] + " </b> <span>" + data[i][4] + "</span></div>" +
            "<div class='comment-text'>" + data[i][3] + "</div>"+
            "</div>";
            
            var item = $("<li>").html(comments);
            var reply_list = $('<ul>');
            list.append(item);
            item.append(reply_list);
            listReplies(data[i].comment_id, data, reply_list);

            }
        }
    }
}
