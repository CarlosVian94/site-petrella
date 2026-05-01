<html> 
<body>
<% if request.form("username") = "petrella55" and request.form("password") = "rocco2005" then

Response.Redirect ("../petrella_headlines.html")

else

Response.Redirect ("../index.html")

end if
%>

</body>
</html>