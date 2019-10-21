<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
	
String username = request.getParameter("username");
if(!username.isEmpty()){
	session.setAttribute("un", username);
	response.sendRedirect("hienthi.jsp");
}
else {
	out.print("loi roi");
	
}
%>
</body>
</html>