<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <%@page import="com.asset_management.beans.UserBean" %>
    <%@page import="java.util.ArrayList" %>


<style type="text/css">

body{
background-image:url('https://imgur.com/p7L8a5E.jpg');
background-size:cover;
height:100%;
}
</style>

</head>

<body>



<h4 align="right"><a href="./BackbtnMangerhome" >Home</a>  &nbsp;| &nbsp;<a href="./logout">logout</a></h4> 

<%UserBean ub1=(UserBean)session.getAttribute("My_Request_To_Id&MyEmail"); 
String Emailid=ub1.getEmailid();
int supportid=ub1.getSupportid();
%>

<center>
	<h4 align="left"><font color="blue"> Your ID: ${user_session}</font></h4> 
	<h4 align="left"><font color="blue"> Your EmailID: <%=Emailid %></font></h4> 
	<h4 align="left"><font color="blue"> Your Support ID:<%=supportid %></font></h4> 
</center>

	<%
	UserBean eb=(UserBean)request.getAttribute("Profile");
		if(eb!=null)
		{
			%>
			<center>
			<font color="orange"><h1>Update Profile</h1></font>
			<form action="./managerprofileUpdate" method="Post">
			
				<table border="1">
							
					
					<tr><td><font color="orange"> First Name</font></td><td><input type="text" name="firstname" pattern="[A-Za-z- ]+" title="only alphabet" value="<%=eb.getFirstname()%>"required/>&nbsp;</td></tr>
					<tr><td><font color="orange"> Last Name</font></td><td><input type="text" name="lastname" pattern="[A-Za-z- ]+" title="only alphabet" value="<%=eb.getLastname()%>"required/>&nbsp;</td></tr>
					<tr><td><font color="orange"> Email Id</font></td><td><input type="email" name="emailid" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" value="<%=eb.getEmailid()%>"required />&nbsp;</td></tr>
					<tr><td><font color="orange"> Manager Id</font></td><td><input type="text" name="managerid" value="<%=eb.getManagerid()%>" readonly/>&nbsp;</td></tr>
					<tr><td><font color="orange"> Designation</font></td><td><input type="text" name="designation" value="<%=eb.getDesignation()%>"readonly/>&nbsp;</td></tr>
					<tr><td><font color="orange">Mobile </font></td><td><input type="Number" name="mobile" maxlength="10" title="Enter Mobile Number" pattern="[0-9]{10}" value="<%=eb.getMobile()%>"required/>&nbsp;</td></tr>
					<tr><td><font color="orange">Date Of Joining</font></td><td><input type="date" name="dateofjoining" value="<%=eb.getDateofjoining()%>"readonly/>&nbsp;</td></tr>
					<tr><td><font color="orange"> Status</font></td><td><input type="text" name="status" value="<%=eb.getStatus()%>" readonly/>&nbsp;</td></tr>
					<tr><td><input type="hidden" name="hidden" value="<%=eb.getEmailid()%>"/>&nbsp;</td></tr>
					<tr><td><input type="submit" name="submit" value="update now" /></td></tr>
				</table>
				</form>
				</center>				
			<%
		}
	%>




</body>
</html>