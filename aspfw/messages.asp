<%
class cls_message

	private p_ASPError		
	
	public function throwSM(value)
	
		throwSM=value
		throwSM=replace(throwSM,vbcrlf,"<br>",1,-1,1)		
		
		p_ASPError=ASPError
		
		if not isLeeg(p_ASPError) then
			throwSM=p_ASPError & "<br><br>" & throwSM & "<br><br>" & p_ASPError 
		end if	
	
		throwSM=throwSM & "<br><br><button type=""button"" style=""font-size:16px;padding:10px 25px"" onclick=""location.reload()"">retry</button>"
		
		throwSM="<div style=""font-weight:700;font-size:16px;font-family:Helvetica;background-color:Orange;color:white;padding:20px 20px"">" & throwSM & "</div>"
				
		response.clear
		response.write throwSM
		response.flush
		response.end	
		
	
	end function
	
	public function ASPError
		
		if err.number=0 then exit function	
		
		ASPError="<div style=""padding:15px 25px;background-color:Red;font-color:White"">"
		ASPError=ASPError & "ASP Error occurred:<br>"
		ASPError=ASPError & "<br>Number: " & err.number		
		ASPError=ASPError & "<br>Description: " & err.Description
		ASPError=ASPError & "<br>Source: " & err.Source 
		ASPError=ASPError & "</div>"	
	
	end function	

end class
%>