<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-gb" lang="en-gb" dir="ltr">
<head>
  <title>Zappy</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%
HttpSession ss=request.getSession();
int s=(int)ss.getAttribute("user_session");


response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);

 if(s==0)
 { 
	response.sendRedirect("user_login.jsp");
 }
 %>	

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


<h1>My Profile</h1>

<%UserBean ub1=(UserBean)session.getAttribute("My_Request_To_Id&MyEmail"); 
String Emailid=ub1.getEmailid();
int supportid=ub1.getSupportid();
%>

<center>
	<h3 align="left"><font color="blue"> Your ID: ${user_session}</font></h3> 
	<h3 align="left"><font color="blue"> Your EmailID: <%=Emailid %></font></h3> 
	<h3 align="left"><font color="blue"> Your Support ID:<%=supportid %></font></h3> 
</center>
<table border="1">

<tr><th>ManagerID</th><th>First Name</th><th>Last Name</th><th>Email Id</th><th>Mobile</th><th>Password</th><th>Designation</th><th>Date Of joining</th><th>SupportId</th><th>Update</th></tr>

</br>


<%@page import="java.util.ArrayList,com.asset_management.beans.*"%>
<%
UserBean ub=(UserBean)request.getAttribute("Profile");
%>
<tr>

<td><%=ub.getManagerid()%></td>

<td><%=ub.getFirstname()%></td>
<td><%=ub.getLastname()%></td>
<td><%=ub.getEmailid()%></td>
<td><%=ub.getMobile()%></td>
<td><%=ub.getPassword()%></td>
<td><%=ub.getDesignation()%></td>
<td><%=ub.getDateofjoining()%></td>
<td><%=ub.getSupportid()%></td>


<td>
										<form action="./managerprofileUpdateGet">
												<input type="hidden" name="hidden3" value="<%=ub.getId()%>"/>&nbsp;
												<input type="submit" name="submit" value="Update"/>&nbsp;												
										</form>
										</td>
										
</tr>

</table>

</center>
</body>
</html>