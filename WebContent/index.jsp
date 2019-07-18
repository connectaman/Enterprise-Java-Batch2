<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<p>2+2 = <%= 2+2 %></p>
<%
for(int i=0;i<5;i++){
out.println("<h1>Hello</h1>");	
}
%>

</body>
</html>