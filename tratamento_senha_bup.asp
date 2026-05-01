<html> 
<body>
<% set db = server.createobject ("adodb.connection") 'Banco de Dados
   set rs = server.createobject ("adodb.recordset") 'Tabela de Registros
   'Path (caminho) do banco
   db.open "driver={microsoft access driver (*.mdb)}; dbq= " &_server.MapPath("bd1.mdb")
   rs.open "select * from visitante where" &_
            "login = '" & Replace(request.form("username"), "'", "'") &_
            "'and senha='" & Replace(request.form("password"),"'", "'") &"'",db
   if not rs.eof then 'encontrou o usuário         
                      'armazenameos em uma variável session o status do usuário
                 session ("status") = "ok"
                      'redirecionamos para a página inicial
                 response.redirect ("../site_petrella/index.htm")
                 else 'usuário não encontrado
                 response.redirect(ïndex.asp?erro=negado")
                 endif
                 set rs = nothing 'destruimos o objeto
                 rs.close
 %>                       


<% if request.form("username") = "petrella55" and request.form("password") = "rocco2005" then

Response.Redirect ("../site_petrella/index.htm")

else

Response.Redirect ("../index.html")

end if
%>

</body>
</html>