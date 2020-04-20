<%
'this sample class can return a list of options or a single value from a list of key/pairs
'the list dictionary can also be filled with records from a database, like a list of countries
 
Class cls_starlist
	
	Public list
	
	Private Sub Class_Initialize
	
		Set list = Server.CreateObject("scripting.dictionary")
		
		list.Add "0", "0 stars"
		list.Add "1", "1 star"
		list.Add "2", "2 stars"
		list.Add "3", "3 stars"
		list.Add "4", "4 stars"
		list.Add "5", "5 stars"
		
	End Sub
	
	Private Sub Class_Terminate
	
		Set list = nothing
		
	End Sub
	
	Public Function showSelected(mode, selected)		
		
		selected=aspL.convertStr(selected)
		
		Select Case mode
		
			Case "single" : showSelected = list(selected)
			
			Case "option"
			
				showSelected="<option></option>"
				
				Dim key
				For each key in list
				
					showSelected = showSelected & "<option value=""" & key & """"
					
					If selected = key Then
						showSelected = showSelected & " selected"
					End If
					
					showSelected = showSelected & ">" & list(key) & "</option>" & vbcrlf
				Next
				
		End Select
		
	End Function
	
End class
%>