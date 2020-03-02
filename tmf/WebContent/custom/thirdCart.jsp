<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<% request.setCharacterEncoding("euc-kr"); %>
<%@ page import="util.Conn" %>
<%@ page import="java.sql.*" %>
<% String User=(String)session.getAttribute("User"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Too Much Fashion</title>
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
Date today = new Date();
	String p_id_1=(String)request.getParameter("p_id_1");
	int in_p_id=Integer.parseInt(p_id_1);
	String p_id_2=(String)request.getParameter("p_id_2");
	int in_p_id2=Integer.parseInt(p_id_2);
	String p_id_3=(String)request.getParameter("p_id_3");
	int in_p_id3=Integer.parseInt(p_id_3);
	String c_name=(String)request.getParameter("c_id");
	String date = (String)request.getParameter("date");
	String num=(String)request.getParameter("num");
	int in_num=Integer.parseInt(num);
	
	int rst=0;
	String db_id=null;
	Connection conn=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	try{
		conn=Conn.getConnection();
		String sql="select * from customer where c_name='"+c_name+"'";
		ps=conn.prepareStatement(sql);
		rs=ps.executeQuery();
		while(rs.next()){
			db_id=rs.getString(1);
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		Conn.close(ps, conn);
	}
	
	try{
		conn=Conn.getConnection();
		String sql="insert into `p_order_3` values("+null+",'"+db_id+"','"+in_p_id+"','"+in_p_id2+"','"+in_p_id3+"','"+date+"',"+in_num+")";
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
<li><a href="../manager/magagement.jsp">MANAGEMENT</a></li>
<li><a href="../ready/newarrivals.jsp">NEW ARRIVALS</a></li>
<li><a href="../ready/best.jsp">BEST</a></li>
<li><a href="../ready/sale.jsp">SALE</a></li>
<li><a href="../ready/readymade.jsp">READY-MADE</a></li>
<li><a href="Choice_cus.jsp">HAND-MADE</a></li>
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
	구매내역 저장이 완료되었습니다.<br><br>
	<button onclick="order()">구매내역 이동</button>
	</div>
</center>
<%
}else{
%>
<script type="text/javascript">
	alert("구매 오류");
	history.go(-1);
</script>
<%
}
%>
</body>
</html>