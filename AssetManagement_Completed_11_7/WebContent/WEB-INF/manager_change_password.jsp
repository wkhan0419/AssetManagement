<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<h4 align="right"><a href="./BackbtnMangerhome" >Home</a>  &nbsp;| &nbsp;<a href="./logout">logout</a></h4> 
<center>
	<h3><font color="blue"> Your ID: ${user_session}</font></h3> 
</center>
${passwordchanged}
<center>





		<!--Ajax code for check Same Name Product if already exist  -->
<%response.setContentType("text/html"); %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		
		$("#oldpassword").change(function(){
			
			var data = "oldpassword="+$("#manager_id").val();
			var data2=$("#oldpassword").val();
			
			$.ajax({
				
				url:'Getoldpassword',
				data:data,
				type:'Get',
				success:function(result){{														
					
						if(result!=null){
						
						$("#submitbtnid").hide();
						}
					
					
				}
				});
			
		});
		
	});

</script>



</head>



<body>



 <center>

<table cellpadding="2" width="30%" align="center"
cellspacing="2" border="1">

${ChnagepwdMsgSucces}

<script type="text/javascript">  
function matchpass(){  
var firstpassword=document.f1.password.value;  
var secondpassword=document.f1.password2.value;  
  
if(firstpassword==secondpassword){  
return true;  
}  
else{  
alert("password must be same!");  
return false;  
}  
}  
</script>  
  
<form name="f1" action="./managerchangepwdsubmit" onsubmit="return matchpass()" method="post">

<input size="5px" type="hidden"  value="<%=session.getAttribute("user_session")%>" readonly="readonly"/>
<tr id="oldpasswordId"><td>Old Password:  <input type="password" id="oldpassword" name="oldpassword" placeholder="Enter Old Password" required/>
	<div id="mid"></div>
</td>
</tr>
 
<tr id="newpassword">
<td>New Password:<input type="password" name="password" id="newpassword" placeholder="Enter New Password" required/></td></tr>  
<tr><td>Conform Password:<input type="password" name="password2"  placeholder="Conform Password" required/></td></tr>

<tr><td>
<center>
<input type="reset">
<input id="submitbtnid" type="submit" value="submit" ></center>
</td></tr>

</form> 
</center>
</table>

</html>

</body>
</html>