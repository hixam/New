<!DOCTYPE html>
<html lang="en">
<head>
  <title>Fibonacci webpage</title>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script type='text/javascript'>
      $(document).ready(function () {
           $(document).on("click", "#somebutton", function () {
             var iu = $(".textinput").val();
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
  <title>Hola soy Fibonacci! Qué fácil!</title>
  <p>How many numbers of the serie do you want to get?</p>
  <input type="text" name="textinput" class ="textinput" />
   <button id="somebutton">Submit</button>
   <div id="somediv"></div>
</body>
</html>
