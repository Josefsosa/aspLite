<%
'DataTables Example (Json data)
dim form : set form=aspl.form
form.target="body"
form.doscroll=true

dim plainhtml : set plainhtml=form.field("plain")
plainhtml.add "html",aspL.loadText("default/html/sampleform20.resx")

form.build()

%>