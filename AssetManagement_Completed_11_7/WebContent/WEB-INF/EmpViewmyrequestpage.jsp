
<style type="text/css">

body{
background-image:url('https://imgur.com/p7L8a5E.jpg');
background-size:cover;
height:100%;
}
</style>

</head>

<body>


<h2><a href="./backs">Home</a></h2>
<h1>Cart Details</h1>
<table border="1">

<tr><th>Requestid</th><th>Managerid<th>Managerapproveddate</th><th>Assetname</th><th>Requestdate</th><th>Status</th></tr>

	<a href="logout">logout </a>	

<%@page import="java.util.List,com.asset_management.beans.*"%>
<%
List<RequestBean> ar=(List<RequestBean>)request.getAttribute("LIST");
for(Object o:ar)
{
	RequestBean ab=null;
if(o instanceof RequestBean)
	ab=(RequestBean)o;

%>
<tr>
<td><%=ab.getRequestid()%></td>
<td><%=ab.getManagerid()%></td>
<td><%=ab.getManagerapproveddate()%></td>
<td><%=ab.getAssetname()%></td>
<td><%=ab.getRequestdate()%></td>



<% 
										if(ab.getStatus()==0)
										{
										%>									
											<td><h6>Pending by Manager</h6></td>
										<%
										}
										else if(ab.getStatus()==1)
										{%>									
											<td><h6>Approved by Manager</h6></td>
										<%}
										else if(ab.getStatus()==2)
										{%>									
											<td><h6>Rejected by Manager</h6></td>
										<%}
										else if(ab.getStatus()==4)
										{%>									
											<td><h6>Dispached by Support</h6></td>
										<%}


		%>								

</form>
</tr>
<% 
}
%>
</table>

</center>