<%
'database plugin example
dim db,rs 

set db=aspL.plugin("accessDB")
db.path="db/sample.mdb"

body=body & "Access database-plugin:<ul> " 

set rs=db.execute("select * from person")

while not rs.eof
	body=body & "<li>" & rs("sName") & "</li>"
	rs.movenext
wend 

body=body & "</ul>"
%>