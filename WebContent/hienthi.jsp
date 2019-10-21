<%@page import="java.util.ArrayList"%>
<%@page import="Bean.SachBean"%>
<%@page import="Bo.SachBo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp"%>
<style>
.item-sach {
	border: 5px solid #bbbbbb;
    box-shadow: 0 0 0 5px #9ec79e;
	border-radius: 30px;
}

.item-sach p {
	text-align: center;
	margin-bottom: 0;
}

.item-sach img {
	display: block;
	margin: 0 auto;
	margin-top: 10px;
}

.col-lg-3 {
	margin-bottom: 30px;
}

.title-book {
	color: red;
	font-size: 20px;
}

.author-book {
	color: #9933ff;
	font-size: 98%;
}

.price-book {
	color: #009900;
	font-size: 120%;
}
</style>
<div class="container mt-3">
	<div class="row">

		<%
			SachBo sach = new SachBo();
			ArrayList<SachBean> ds = sach.getSach();
			int ss = ds.size();
			for (int i = 0; i < ss; i++) {
				SachBean s = ds.get(i);
		%>
		<div class="col-lg-3">
			<div class="item-sach ">
				<img class="pt-3" alt="" src="<%=s.getAnh()%>" width=200px
					height=300px><br>
				<p class="title-book"><%=s.getTensach()%></p>
				<p class="author-book"><%=s.getTacgia()%></p>
				<p class="price-book"><%=s.getGia()%>
					dong
				</p>
				<a
					href="<%if (session.getAttribute("un") == null) {
					out.print("login.jsp?name=abc");
				} else {%> mua.jsp?ms=<%=s.getMasach()%>
						&ts=<%=s.getTensach()%>
						&tg=<%=s.getTacgia()%>
						&gia=<%=s.getGia()%><%}%>">
					<img style="margin-top: 0" src="mua.png" width=130px height=70px>
				</a>
			</div>

		</div>
		<%
			}
		%>
	</div>
</div>
</body>
</html>