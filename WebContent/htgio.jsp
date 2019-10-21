<%@page import="Bo.GioHangBo"%>
<%@page import="Bean.GioHangBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp"%>
<style type="text/css">
th {
	background-color: darkslategray;
	color: aqua;
	padding: 20px;
}

table {
	border: 0;
	width: 100%;
}

td {
	padding: 15px 10px;
}

.sum {
	color: lightslategray;
	font-size: large;
	font-weight: 600;
}

button {
	border-radius: 6px;
}
</style>
<div class="container">
	<table align="center" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<th>ma sach</th>
			<th>ten sach</th>
			<th>tac gia</th>
			<th>gia</th>
			<th>So luong</th>
			<th>thanh tien</th>
			<th>xoa</th>
			<%
				if (session.getAttribute("gh") != null) {
					GioHangBo gh = (GioHangBo) session.getAttribute("gh");
			%>
		</tr>
		<%
			for (GioHangBean g : gh.ds) {
		%>
		<tr>
			<td><%=g.getMasach()%></td>
			<td><%=g.getTensach()%></td>
			<td><%=g.getTacgia()%></td>
			<td><%=g.getGia()%> d</td>
			<td style=""><%=g.getSoluong()%>
				<form action="mua.jsp" style="display: initial; float: right;">
					<input id="inputsl" type="number" name="ghEdit">
					<button type="submit" onclick="isnum()">Sua</button>
					<input type="hidden" name="idEdit" value="<%=g.getMasach()%>">
					<input type="hidden" name="tenEdit" value="<%=g.getTensach()%>">
					<input type="hidden" name="tacgiaEdit" value="<%=g.getTacgia()%>">
					<input type="hidden" name="giaEdit" value="<%=g.getGia()%>">
				</form></td>

			<td><%=g.getThanhtien()%> d</td>
			<td>
				<form action="mua.jsp">
					<input type="hidden" name="idXoa" value="<%=g.getMasach()%>">
					<button type="submit" name="delete">Xoa</button>
				</form>
			</td>
		</tr>

		<%
			}
		%>
	</table>
	<div align="right" class="sum">
		Tong:
		<%=gh.Tong()%> d</div>

	<%
		}
	%>
</div>
<body></body>
<html></html>