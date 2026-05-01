<html> 
<body>
<% if request.form("username") = "petrella55" and request.form("password") = "rocco2005" then
response.write "benvindo"
else
response.write "tchau"
end if
%>

</body>
</html>