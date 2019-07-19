<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*,com.Batch2.User.*" %>   
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Users</title>
</head>
<body>
<%
List<UserModel> l = (List<UserModel>)request.getAttribute("data");
%>

<div class="listusers">
<center>
<table>
<tr>
<th>Id</th>
<th>Name</th>
<th>Email</th>
<th>Phone</th>
<th>City</th>
</tr>

<%
for(UserModel u:l){
%>
<tr>
<td><%= u.getId() %></td>
<td><%= u.getName() %></td>
<td><%= u.getEmail() %></td>
<td><%= u.getPhone() %></td>
<td> <%= u.getCity() %></td>
</tr>
<%} %>
</table>

</center>
</div>
</body>
</html>