<%
body=aspl.loadText("html/demo_asp/404/default.resx")

'title
body=replace(body,"[title]","Contact",1,-1,1)

'heading
body=replace(body,"[heading]","Fill in the contact form:",1,-1,1)

'body - here we load yet another html-control, a bootstrap form (html/demo_asp/404/contactform.resx)
body=replace(body,"[body]",aspl.loadText("html/demo_asp/404/contactform.resx"),1,-1,1)

aspL.dump(body)

%>