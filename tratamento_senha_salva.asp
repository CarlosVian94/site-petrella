<html> 
<body>
<% if request.form("username") = "petrella55" and request.form("password") = "rocco2005" then

Response.Redirect ("../site_petrella/index.htm")

else

Response.Redirect ("../index.html")

end if
%>

</body>
</html>