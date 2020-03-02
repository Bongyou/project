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

.mycart{
  width:75%;
  margin-top: 12%;
  margin-right:auto;
  margin-left:auto;
}

.cart{
border-top: 1px solid gray;
border-bottom: 1px solid gray;
padding-top:1%;
padding-bottom: 1%;
float:left;
display:inline-block;
height:400px;
width:65%;
overflow-y:scroll;
}

.cart hr{
border: 0.5px solid gray;
}

.info img{
float:left;
width:13%;
height:13%;
margin:5px;
}

.info input[type=checkbox]{
float:right;
margin-top:auto;
margin-bottom:auto;
margin-right:15px;
width:15px;
height:15px;
}

.info{
margin:10px;
padding:10px;
}
.info p{
margin-left:10px;
padding-left:20px;
}

.pay{
float:left;
height:400px;
width:35%;
border-top: 1px solid gray;
border-bottom: 1px solid gray;
}

.pay h2{
margin-top:20%;
}

.pay h3{
margin-top:10%;
}

.pay input[type=button]{
margin-top:17%;
width:32%;
height:15%;
background-color:black;
color:white;
border: 1px solid black;
}

.status{
  border-top: 1px solid gray;
  border-bottom: 1px solid gray;
  padding-top:2%;
  padding-bottom:2%;
}

.checking{
  width: 33%;
  height: 150px;
  margin-top:20px;
  display: inline-block;
  float: left;
  background-color: white;

}
.checking h3{
  margin-bottom: 20px;
}
.checking p{
  font-size: 13px;
  text-align: center;
}


.pay h2{
font-size:20px;
}

.pay h3{
font-size:15px;
}

::-webkit-scrollbar{
width:10px;
background-color:black;
border : 1px solid black;
}

::-webkit-scrollbartrack{
background-color:blue;
}

::webkit-scrollbar-thumb{
border-radius:50px;
color:white;
}

.footer{
background-color:black;
color:white;
display:inline-block;
width:100%;
margin-top:10%;
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



	<div class="mycart">
		<p style="text-align:center;">My Cart</p>
		<div class="cart">
<%
Connection conn=null;
PreparedStatement ps=null;
ResultSet rs=null;

String db_id=null;

try{
	conn=Conn.getConnection();
	String sql="select * from customer where c_name='"+User+"'";
	ps=conn.prepareStatement(sql);
	rs=ps.executeQuery();
	while(rs.next()){
		db_id=rs.getString(1);
	}
}catch(Exception e){
	e.printStackTrace();
}finally {
	Conn.close(ps, conn);
}

String[] e_name=new String[10];
int[] price = new int[10];
int[] num = new int[10];
int i=0;
int result=0;

try{
	conn=Conn.getConnection();
	String sql="select earring.e_name, earring.e_price, e_cart.num from earring,e_cart where earring.e_id=e_cart.e_id and c_id='"+db_id+"'";
	ps=conn.prepareStatement(sql);
	rs=ps.executeQuery();
	while(rs.next()){
		e_name[i]=rs.getString(1);
		price[i]=rs.getInt(2);
		num[i]=rs.getInt(3);
		result=result+(price[i]*num[i]);
		i++;
	}
}catch(Exception e){
	e.printStackTrace();
}finally{
	Conn.close(ps, conn);
}

	int j=0;
	for(j=0;j<10;j++){
		if(e_name[j]==null)
			break;
%>
			<div class="info">
				<img src="../image/<%=e_name[j] %>/1.jpg">
				<p><%=e_name[j] %> 귀걸이</p>
				<p><%=price[j] %>원</p>
				<p><%=num[j] %>개</p>
				<input type="checkbox" class="chk_cart">
			</div>
			<hr />
<%
	}
%>
		</div>
		<center>
			<div class="pay">
				<h2>총 결제 금액</h2>
				<h3><%=result %></h3>
				<input type="button" value="결제">
			</div>
		</center>
	</div>
	<div class="footer">
		<p>Contact Us</p>
		<p>임지원</p>
		<p>성채원</p>
		<p>봉유정</p>
	</div>
</body>
</html>