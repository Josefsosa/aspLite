<%
'SheetJS sample - generate a XLSX file from a JSon arrary of objects
set form=aspl.form

if form.postback then

	'conditional load of JavaScript!
	set script=form.field("plain")
	script.add "html",aspl.loadText("default/html/sampleform30.resx")	

end if

set field = form.field("submit")
field.add "value","click to generate xlsx"
field.add "class","btn btn-success"
field.add "id","generateExcel"

form.build
%>