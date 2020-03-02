<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% request.setCharacterEncoding("euc-kr"); %>
<% String User=(String)session.getAttribute("User"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>TMF Manager</title>
<link rel="stylesheet" type="text/css" href="manager.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div style="text-align:left;">
		<br>
		<div class="Management">
			Management
			<br>
		</div>
		<br>
	</div>
	<hr />

	<div class="menubar">
		<ul>
<li><a href="../main.jsp">TMF</a></li>
<li><a href="../info.jsp">ABOUT</a></li>
<li><a href="../search.jsp">SEARCH</a></li>
<li><a href="magagement.jsp">MANAGEMENT</a></li>
<li><a href="../ready/newarrivals.jsp">NEW ARRIVALS</a></li>
<li><a href="../ready/best.jsp">BEST</a></li>
<li><a href="../ready/sale.jsp">SALE</a></li>
<li><a href="../ready/readymade.jsp">READY-MADE</a></li>
<li><a href="../custom/Choice_cus.jsp">HAND-MADE</a></li>
<%
  						if(User==null){
  					%>
  					<li><a href="#" id="current">ACCOUNT</a>
  						<ul>
     						<li><a href="../login/loginForm.jsp">LOGIN</a></li>
     						<li><a href="../member/regFormImpl.jsp">JOIN US</a></li>
    					</ul>
					</li>
					<%
  						}
  						else{
					%>
						<li><a href="#" id="current"><%= User%>님</a>
						<ul>
							<li><a href="../ready/order.jsp">Order</a></li>
							<li><a href="../ready/shoppingCart.jsp">Cart</a></li>
						</ul>
		  			</li>
					<li><a href="#" onclick="logout()">Logout</a></li>
					<script type="text/javascript">
						function logout(){
							var con=confirm("Do you want Logout?");
							if(con==true){
								location.href="../login/logoutProc.jsp";
							}
							else{
								return;
							}
						}
					</script>
					<%
  						}
					%>
		</ul>
	</div>
	<form action="ManageProc.jsp" method="post">
		<div class="detail">
			<div style="text-align:center;">
				<h3>상품 관리</h3><br><br>
				<p><b>귀걸이 상품번호</b></p>
				<p>e_id : <input type="text" name="e_id"><br></p>
				<p><b>귀걸이 이름</b></p>
				<p>e_name : <input type="text" name="e_name"><br></p>
				<p><b>귀걸이 가격</b></p>
				<p>e_price : <input type="text" name="e_price"><br></p>
				<p><b>만든이 아이디</b></p>
				<p>m_id : <input type="text" name="m_id"><br></p>
				<p><b>만든 날짜</b></p>
				<p>date : <input type="text" name="date"><br></p>
			</div>

			<br><br>

			<div class="Bootstrapbutton">
				<button class="btn btn-danger" onclick="check()">Add</button>
				<br><br><br><br><br>
			</div>
		</div>
	</form>
	<script type="text/javascript">
		function check(){
			documemt.form.submit();
		}
	</script>
	<br><br>
</body>
</html>