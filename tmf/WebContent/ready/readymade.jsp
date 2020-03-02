<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% String User=(String)session.getAttribute("User"); %>
<%@ page import="util.Conn" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Too Much Fashion</title>
  		<link rel="stylesheet" type="text/css" href="readymade.css">
<style>
.paging ul {
	list-style:none;
	display:inline;
  float : center;
}
.paging ul li a {
	float:left;
	padding:4px;
	margin-left:400px;
	width:15px;
	color:#000;
	font:bold 12px tahoma;
	border:1px solid pink;
	text-align:center;
	text-decoration:none;
}
.paging ul li a:hover, .paing ul li a:focus {
	color:#fff;
	border:1px solid #f40;
	background-color:pink;
}

</style>
</head>
	<body>
    	<div style="text-align:left;">
			<br>
			<div class="Readymade">
				Ready-made
				<br>
			</div>
      		<br>
      		<hr/>

    		<div class="menubar">
    			<ul>
<li><a href="../main.jsp">TMF</a></li>
<li><a href="../info.jsp">ABOUT</a></li>
<li><a href="../search.jsp">SEARCH</a></li>
<li><a href="../manager/magagement.jsp">MANAGEMENT</a></li>
<li><a href="newarrivals.jsp">NEW ARRIVALS</a></li>
<li><a href="best.jsp">BEST</a></li>
<li><a href="sale.jsp">SALE</a></li>
<li><a href="readymade.jsp">READY-MADE</a></li>
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
							<li><a href="order.jsp">Order</a></li>
<li><a href="shoppingCart.jsp">Cart</a></li>
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
    		<%
    			int[] id=new int[9];
    			String[] ear1=new String[9];
    			int[] price=new int[9];
    			int i=0;
    			
    			Connection conn=null;
    			PreparedStatement ps=null;
    			ResultSet rs=null;
    			try{
    				conn=Conn.getConnection();
    				String sql="select * from earring order by e_id limit 9";
    				ps=conn.prepareStatement(sql);
    				rs=ps.executeQuery();
    				while(rs.next()){
    					id[i]=rs.getInt(1);
    					ear1[i]=rs.getString(2);
    					price[i]=rs.getInt(3);
    					i++;
    				}
    			}
    			catch(Exception e){
    				e.printStackTrace();
    			}finally {
    				Conn.close(ps, conn);
    			}
    		%>
				<div class="content">
					<div style="text-align:center;">
					<br><br><br>
					<%
						if(id[0] == 1001){
					%>
  						<div class="one">
							<br>
      						<a href="10.jsp" target = "_self"><img src="../image/<%=ear1[0] %>/1.jpg" alt="1" width="300" height="300"></a>
    						<h2><%=ear1[0] %> 귀걸이</h2>
							<h3>Price : <%=price[0] %> 원</h3>
    					</div>
    				<%
						}
						if(id[1] == 1002) {
    				%>
    					<div class="two">
							<br>
    						<a href="6.jsp" target = "_self"><img src="../image/<%=ear1[1] %>/1.jpg" alt="2" width="300" height="300"></a>
    						<h2><%=ear1[1] %> 귀걸이</h2>
							<h3>Price : <%=price[1] %> 원</h3>
						</div>
						<%
						}
						if(id[2] == 1003){
						%>
						<div class="three">
							<br>
							<a href="5.jsp" target = "_self"><img src="../image/<%=ear1[2] %>/1.jpg" alt="3" width="300" height="300"></a>
							<h2><%=ear1[2] %> 귀걸이</h2>
							<h3>Price : <%=price[2] %> 원</h3>
						</div>
						<%
						}
						if(id[3] == 1004){
						%>
						<div class="four">
							<br>
							<a href="4.jsp" target = "_self"><img src="../image/<%=ear1[3] %>/1.jpg" alt="4" width="300" height="300"></a>
							<h2><%=ear1[3] %> 드롭귀걸이</h2>
							<h3>Price : <%=price[3] %> 원</h3>
						</div>
						<%
						}
						if(id[4]==1005){
						%>
						<div class="five">
							<br>
							<a href="3.jsp" target = "_self"><img src="../image/<%=ear1[4] %>/1.jpg" alt="5" width="300" height="300"></a>
							<h2><%=ear1[4] %> 드롭 귀걸이</h2>
							<h3>Price : <%=price[4] %> 원</h3>
						</div>
						<%
						}
						if(id[5]==1006){
						%>
						<div class="six">
							<br>
							<a href="12.jsp" target = "_self"><img src="../image/<%=ear1[5] %>/1.jpg" alt="6" width="300" height="300"></a>
							<h2><%=ear1[5] %> 귀걸이</h2>
							<h3>Price : <%=price[5] %> 원</h3>
						</div>
						<%
						}
						if(id[6]==1007){
						%>
						<div class="seven">
							<br>
							<a href="1.jsp" target = "_self"><img src="../image/<%=ear1[6] %>/1.jpg" alt="7" width="300" height="300"></a>
							<h2><%=ear1[6] %> 귀걸이</h2>
							<h3>Price : <%=price[6] %> 원</h3>
						</div>
						<%
						}
						if(id[7]==1008){
						%>
						<div class="eight">
							<br>
							<a href="7.jsp" target = "_self"><img src="../image/<%=ear1[7] %>/1.jpg" alt="8" width="300" height="300"></a>
							<h2><%=ear1[7] %> 귀걸이</h2>
							<h3>Price : <%=price[7] %> 원</h3>
						</div>
						<%
						}
						if(id[8]==1009){
						%>
						<div class="nine">
							<br>
							<a href="13.jsp" target = "_self"><img src="../image/<%=ear1[8] %>/1.jpg" alt="9" width="300" height="300"></a>
							<h2><%=ear1[8] %> 귀걸이</h2>
							<h3>Price : <%=price[8] %> 원</h3>
						</div>
						<%
						}
						%>
					</div>
    				<br>
    				<div class="paging">
    					<ul>
    						<li><a href="readymade.jsp">1</a></li>
    						<li><a href="readymade2.jsp">2</a></li>
    					</ul>
    				</div>
    				<br><br><br>
    				<div class="footer">
						<pre>
							&nbsp;
							전화번호 : 042-483-4094
							주소 : 청주시 서원구 충대로1 학연산 308
							귀걸이 만든 사람 : @only_0nni
							&nbsp;<br>
    					</pre>
    				</div>
				</div>
		</div>
	</body>
</html>