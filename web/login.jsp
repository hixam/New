<%--
  Created by IntelliJ IDEA.
  User: hicham.az
  Date: 18/11/2016
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Login Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <Script type='text/javascript'>
      $(document).ready(function() {
        $("#loginbtn").click(function(){ //this will be triggered when the first button was clicked
       var user = $("#textinput").val();
       var pass = $("#pass").val();
       var iu = user + pass;
                    $.get('Servlet', {datos: iu},
                            function (responseJson) {
                              var $ubl = $("<ul>").appendTo($("#somediv"));
                              $.each(responseJson, function (index, item) { // Iterate over the JSON array.
                                $("<li>").text(item).appendTo($ubl);
                              });
                            });
                  });
                });
    </script>
  </head>
  <body>
   <div style="margin:200px 200px;">

        <input type="text"  id="login" />
                <input type="text"  id="pass" />
        <input type="button" value="login" id="loginbtn" />
           <div id="somediv"></div>
      </select>
      </div>
  </body>
</html>
