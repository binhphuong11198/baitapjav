<%@ include file="menu.jsp"%>
<%	if(session.getAttribute("un")!=null) 
{
		session.removeAttribute("un"); 
		session.removeAttribute("gh"); 
		response.sendRedirect("login.jsp");
}%>
</body>
</html>