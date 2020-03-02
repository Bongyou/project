<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="util.Conn" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("euc-kr"); %>
<% String User=(String)session.getAttribute("User"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Earring Add</title>
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

.mypage{
  width:75%;
  margin-top: 12%;

}
	.order{
		border-top: 1px solid gray;
padding-top:3%;
padding-bottom: 1%;
	}
	
	
		button{
  			background:#3c3c3c;
  			color:white;
  			border:none;
  			position:relative;
			height:40px;
			font-size:15px;
			padding-top: 10px;
			padding-left: 20px;
			padding-bottom: 20px;
			padding-right: 20px;
			cursor:pointer;
			transition:800ms ease all;
			outline:none;
		}

			button:hover{
			  background:#fff;
			  color:#3c3c3c;
			}

			button:before,button:after{
			  content:'';
			  position:absolute;
			  top:0;
			  right:0;
			  height:2px;
			  width:0;
			  background: #3c3c3c;
			  transition:400ms ease all;
			}

			button:after{
			  right:inherit;
			  top:inherit;
			  left:0;
			  bottom:0;
			}

			button:hover:before,button:hover:after{
			  width:100%;
			  transition:800ms ease all;
			}
</style>
</head>
<body>
<%
String e_id=(String)request.getParameter("e_id");
int n_e_id=Integer.parseInt(e_id);
String e_name=(String)request.getParameter("e_name");
String e_price=(String)request.getParameter("e_price");
int n_e_price=Integer.parseInt(e_price);
String m_id=(String)request.getParameter("m_id");
int n_m_id=Integer.parseInt(m_id);
String date=(String)request.getParameter("date");

int rst=0;
Connection conn=null;
PreparedStatement ps= null;
ResultSet rs=null;
try{
	conn=Conn.getConnection();
	String sql="insert into `earring` values("+n_e_id+",'"+e_name+"',"+n_e_price+","+n_m_id+",'"+date+"',0)";
	ps=conn.prepareStatement(sql);
	rst=ps.executeUpdate();
}catch(Exception e){
	e.printStackTrace();
}finally{
	Conn.close(ps, conn);
}

if(rst>0){
%>
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
<center>
	<div class="order">
	귀걸이 등록이 완료되었습니다.<br><br>
	<button onclick="ear()">귀걸이 페이지 이동</button>
	</div>
</center>
<%
}else{
%>
<script type="text/javascript">
	alert("등록 오류");
	history.go(-1);
</script>
<%
}
%>
<script type="text/javascript">
	function ear(){
		location.href="../ready/readymade.jsp";
	}
</script>
</body>
</html>