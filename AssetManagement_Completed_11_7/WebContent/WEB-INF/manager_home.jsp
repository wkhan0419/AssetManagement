<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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
 <h4 align="right" ><a href="./logout" >logout</a></h4>


<%@page import="java.util.ArrayList,com.asset_management.beans.*"%>
<%UserBean ub=(UserBean)session.getAttribute("My_Request_To_Id&MyEmail"); 
String Emailid=ub.getEmailid();
int supportid=ub.getSupportid();
%>

<center>
	<h2><font color="blue"> Welcome: Manager</font></h2> 
	<h3 align="left"><font color="blue"> Your ID: ${user_session}</font></h3> 
	<h3 align="left"><font color="blue"> Your EmailID: <%=Emailid %></font></h3> 
	<h3 align="left"><font color="blue"> Your Support ID:<%=supportid %></font></h3> 


<form action="" method="get">
<h3><a href="./managerprofile"> Profile</a></h3>
<input type="hidden" name="manager_id" value="<%=session.getAttribute("user_session")%>"/>
</form>

<form action="" method="get">
<h3><a href="./managercreaterequestpage"> Create Request for asset</a></h3>
<input type="hidden" name="mySupportID" value="<%=supportid%>"/>&nbsp;
</form>

<form action="" method="Post">
<h3><a href="./ViewassetRequestByEmp"> View Pending Employee request</a></h3>
<input type="hidden" name="manager_id" value="<%=session.getAttribute("user_session")%>"/>
</form>


<form action="" method="Post">
<h3><a href="./ManagerviewMyrequest"> View My request</a></h3>
<input type="hidden" name="manager_id" value="<%=session.getAttribute("user_session")%>"/>
</form>


<form action="" method="Post">
<h3><a href="./ManagerMyAsset"> View My Asset</a></h3>
<input type="hidden" name="manager_id" value="<%=session.getAttribute("user_session")%>"/>
</form>



<form action="" method="Post">
<h3><a href="./Manager_asset_transfer"> Asset Transfer</a></h3>
<input type="hidden" name="manager_id" value="<%=session.getAttribute("user_session")%>"/>
</form>


<!-- <h3><a href="./Manager_view_asset_request"> View Asset Details</a></h3>
 -->
<h3><a href="./managerchangepwd">Change Password</a></h3>

</center>
</body>
</html>