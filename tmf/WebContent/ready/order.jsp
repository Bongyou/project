<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% String User=(String)session.getAttribute("User"); %>
<%@ page import="util.Conn" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Too Much Fashion</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

	<style>
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
  width:65%;
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
margin-left:15%;
}

.cart hr{
border: 0.5px solid gray;
}

.info img{
float:left;
width:16%;
height:16%;
margin:5px;
}

.info{
margin:10px;
padding:10px;
}
.info p{
margin-left:10px;
padding-left:20px;
}

.status{
  border-top: 1px solid gray;
  border-bottom: 1px solid gray;
  padding-top:2%;
  padding-bottom:2%;
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

.one{
-webkit-filter:grayscale(100%);
filter:gray;
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
		<p style="text-align:center;">My Order</p>
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
int[] num1 = new int[10];
String[] date1=new String[10];
int i1=0;

try{
	conn=Conn.getConnection();
	String sql="select earring.e_name, e_order.num, e_order.date from earring,e_order where earring.e_id=e_order.e_id and e_order.c_id='"+db_id+"'";
	ps=conn.prepareStatement(sql);
	rs=ps.executeQuery();
	while(rs.next()){
		e_name[i1]=rs.getString(1);
		num1[i1]=rs.getInt(2);
		date1[i1]=rs.getString(3);
		i1++;
	}
}catch(Exception e){
	e.printStackTrace();
}finally{
	Conn.close(ps, conn);
}

int[] num2 = new int[10];
String[] date2=new String[10];
int i2=0;
try{
	conn=Conn.getConnection();
	String sql="select num,date from p_order_1 where c_id='"+db_id+"'";
	ps=conn.prepareStatement(sql);
	rs=ps.executeQuery();
	while(rs.next()){
		num2[i2]=rs.getInt(1);
		date2[i2]=rs.getString(2);
		i2++;
	}
}catch(Exception e){
	e.printStackTrace();
}finally{
	Conn.close(ps, conn);
}

int[] num3 = new int[10];
String[] date3=new String[10];
int i3=0;
try{
	conn=Conn.getConnection();
	String sql="select num,date from p_order_2 where c_id='"+db_id+"'";
	ps=conn.prepareStatement(sql);
	rs=ps.executeQuery();
	while(rs.next()){
		num3[i3]=rs.getInt(1);
		date3[i3]=rs.getString(2);
		i3++;
	}
}catch(Exception e){
	e.printStackTrace();
}finally{
	Conn.close(ps, conn);
}

int[] num4 = new int[10];
String[] date4=new String[10];
int i4=0;
try{
	conn=Conn.getConnection();
	String sql="select num,date from p_order_3 where c_id='"+db_id+"'";
	ps=conn.prepareStatement(sql);
	rs=ps.executeQuery();
	while(rs.next()){
		num4[i4]=rs.getInt(1);
		date4[i4]=rs.getString(2);
		i4++;
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
				<p><%=num1[j] %>개</p>
				<p><%=date1[j] %></p>
			</div>
			<hr />
<%
	}
	for(j=0;j<10;j++){
		if(num2[j]==0)
			break;
%>
		<div class="info">
			<img src="../image/크리스탈물방울/1.jpg" class="one">
			<p>1단 귀걸이</p>
			<p><%= num2[j] %>개</p>
			<p><%= date2[j] %></p>
		</div>
		<hr/>
<%
	}
	for(j=0;j<10;j++){
		if(num3[j]==0)
			break;
%>
		<div class="info">
			<img src="../image/라벤더하트/1.jpg" class="one">
			<p>2단 귀걸이</p>
			<p><%= num3[j] %>개</p>
			<p><%= date3[j] %></p>
		</div>
		<hr/>
<%
	}
	for(j=0;j<10;j++){
		if(num4[j]==0)
			break;
%>
		<div class="info">
			<img src="../image/라운드골드/1.jpg" class="one">
			<p>3단 귀걸이</p>
			<p><%= num4[j] %>개</p>
			<p><%= date4[j] %></p>
		</div>
		<hr/>
<%
	}
%>
		</div>
	</div>
	<div class="footer">
		<p>Contact Us</p>
		<p>임지원</p>
		<p>성채원</p>
		<p>봉유정</p>
	</div>
</body>
</html>