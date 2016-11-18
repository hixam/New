<%--
  Created by IntelliJ IDEA.
  User: $uperuser
  Date: 16/11/2016
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Entry Page</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <Script type='text/javascript'>
      $(document).ready(function() {
        $("#open_same_window").click(function(){ //this will be triggered when the first button was clicked
          var go_to_url = $("#redirection").find(":selected").val();//this will find the selected website from the dropdown
          document.location.href = go_to_url;//this will redirect us in same window
        });
        $("#open_new_tab").click(function(){ //this will be triggered when the second button was clicked
          var go_to_url = $("#redirection").find(":selected").val(); //this will find the selected website from the dropdown
          window.open(go_to_url, '_blank'); //this will redirect us in new tab
        });
      });
    </script>
  </head>
  <body>
    <title> Welcome my webpage, choose 1 of the two options </title>
    <div style="margin:200px 200px;">
    <select id="redirection" style="width:200px;">
      <option value="http://localhost:8080/Fibonacci.jsp">Fibonacci Series</option>
      <option value="http://localhost:8080/Calculadora.jsp">Calculator</option>
      <input type="button" value="Open In Same Window" id="open_same_window" />
      <input type="button" value="Open In New Tab" id="open_new_tab" />
    </select>
    </div>
  </body>
</html>
