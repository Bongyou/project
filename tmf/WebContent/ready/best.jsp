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
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

  <style>
  /* Make the image fully responsive */
  .menubar{
border:none;
background: rgba(255, 255, 255, 0);
border:0px;
margin:0px;
width: 100%;
padding:0px;
font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans", "Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica, sans-serif;
font-size:15px;
font-weight:bold;
position: fixed;
top:0px;
z-index: 2;
}

.menubar ul{
background:  rgba(255, 255, 255, 0);
height:50px;
list-style:none;
margin:0;
padding:0;
float: right;
}

.menubar li{
float:left;
padding:0px;
}

.menubar li a{
background:  rgba(255, 255, 255, 0);
color:black;
display:block;
font-weight:normal;
line-height:50px;
margin:0px;
padding:0px 25px;
text-align:center;
text-decoration:none;
}

.menubar li a:hover, .menubar ul li:hover a{
background:none;
color:black;
text-decoration:underline;

}

.menubar li ul{
background: rgba(255, 255, 255, 0);
display:none; /* 평상시에는 드랍메뉴가 안보이게 하기 */
height:auto;
padding:0px;
margin:0px;
border:0px;
position:absolute;
width:200px;
z-index:200;
/*top:1em;
/*left:0;*/
}

.menubar li:hover ul{
display:block; /* 마우스 커서 올리면 드랍메뉴 보이게 하기 */
}

.menubar li li {
background:  rgba(255, 255, 255, 0);
display:block;
float:none;
margin:0px;
padding:0px;
width:200px;
}

.menubar li:hover li a{
background:none;
}

.menubar li ul a{
display:block;
height:50px;
font-size:12px;
font-style:normal;
margin:0px;
padding:0px 10px 0px 15px;
text-align:left;
}

.menubar li ul a:hover, .menubar li ul li:hover a{
background:  rgba(255, 255, 255, 0);
border:0px;
color:black;
text-decoration:none;
}

.menubar p{
clear:left;
}

.content{
  background-color: white;
  height: 100%;
  margin-top: 13%;
  display: inline-block;
}

.content img{
  width:380px ;
  height: 380px;
  float: left;
  margin-top: 10%;
}
.product{
  width: 380px ;
  margin: 10px 10px 10px 10px;
  float: left;
    display: block;
}
.pinfo{
    width: 380px ;
    float:left;
    font-size: 15px;

}
div.footer {
  margin-bottom: auto;
  width: 100%;
  height: 100%;
  background-color:#F7819F;
  text-align: right;
  font-family: Arial, Helvetica, sans-serif;
}

  </style>
</head>
<body>
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
  <center>
<%
String[] best=new String[9];
int[] price = new int[9];
int i=0;

Connection conn=null;
PreparedStatement ps=null;
ResultSet rs=null;
try{
	conn=Conn.getConnection();
	String sql="select * from earring order by sales_n DESC limit 9";
	ps=conn.prepareStatement(sql);
	rs=ps.executeQuery();
	while(rs.next()){
		best[i]=rs.getString(2);
		price[i]=rs.getInt(3);
		i++;
	}
}catch(Exception e){
	e.printStackTrace();
}finally {
	Conn.close(ps, conn);
}
%>
  <div class="content">
    <p>Best</p>
    <div class="product">
  <a href="5.jsp"><img src="../image/<%=best[0] %>/1.jpg"></a>
  <div class="pinfo">
    <pre><b>
    <%=best[0] %> 귀걸이
    <%=price[0] %> 원</b></pre>
  </div>
</div>
<div class="product">
<a href="14.jsp"><img src="../image/<%=best[1] %>/1.jpg"></a>
<div class="pinfo">
<pre><b>
<%=best[1] %> 귀걸이
<%=price[1] %> 원</b></pre>
</div>
</div>
<div class="product">
<a href="9.jsp"><img src="../image/<%=best[2] %>/1.jpg"></a>
<div class="pinfo">
<pre><b>
<%=best[2] %> 귀걸이
<%=price[2] %> 원</b></pre>
</div>
</div>
  <br/>
  <div class="product">
<a href="15.jsp"><img src="../image/<%=best[3] %>/1.jpg"></a>
<div class="pinfo">
  <pre><b>
  <%=best[3] %> 귀걸이
  <%=price[3] %> 원</b></pre>
</div>
</div>
<div class="product">
<a href="7.jsp"><img src="../image/<%=best[4] %>/1.jpg"></a>
<div class="pinfo">
<pre><b>
<%=best[4] %> 귀걸이
<%=price[4] %> 원</b></pre>
</div>
</div>
<div class="product">
<a href="8.jsp"><img src="../image/<%=best[5] %>/1.jpg"></a>
<div class="pinfo">
<pre><b>
<%=best[5] %> 귀걸이
<%=price[5] %> 원</b></pre>
</div>
</div>
<br/>
<div class="product">
<a href="13.jsp"><img src="../image/<%=best[6] %>/1.jpg"></a>
<div class="pinfo">
<pre><b>
<%=best[6] %> 귀걸이
<%=price[6] %> 원</b></pre>
</div>
</div>
<div class="product">
<a href="10.jsp"><img src="../image/<%=best[7] %>/1.jpg"></a>
<div class="pinfo">
<pre><b>
<%=best[7] %> 귀걸이
<%=price[7] %> 원</b></pre>
</div>
</div>
<div class="product">
<a href="1.jsp"><img src="../image/<%=best[8] %>/1.jpg"></a>
<div class="pinfo">
<pre><b>
<%=best[8] %> 귀걸이
<%=price[8] %> 원</b></pre>
</div>
</div>
<br/>


  </div>
  </center>
  <!-- Indicators-->
  <div class="footer">
    <p><pre>
    &nbsp;
     전화번호 : 042-483-4094
     주소 : 청주시 서원구 충대로1 학연산 308
     귀걸이 만든 사람 : @only_0nni
    &nbsp;<br>
  </pre>
  </div>

</body>
</html>
