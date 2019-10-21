<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap Example</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<a class="navbar-brand" href="hienthi.jsp">Mua sach di</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link"
					href="<% if(session.getAttribute("un")!=null){ %>htgio.jsp<% } else{ out.print("login.jsp?name=abc");} %>">gio
						hang</a></li>
				<% if(session.getAttribute("un")!=null){
	%>
				<li class="nav-item"><a class="nav-link" href="login.jsp">
						<% out.print(session.getAttribute("un")); %>
				</a>
					<% } else{ %></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a>
					<%} %></li>
				<%if(session.getAttribute("un")!=null){ %>
				<li class="nav-item"><a class="nav-link" href="logout.jsp"><span
						class="glyphicon glyphicon-log-in"></span> Logout</a></li>
				<%} %>
			</ul>
		</div>
	</nav>