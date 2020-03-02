<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="util.Conn" %>
<%@ page import="java.sql.*" %>
<% 
	request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Too Much Fashion</title>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="//code.jquery.com/jquery-1.12.4.js"></script>
	<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script> <!--slide-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
		/* Make the image fully responsive */
		.carousel-inner img {
			width: 100%;
		  	height:100%;
		}

		.carousel-indicators{
			border-radius: 100%;
		}
	  	#myCarousel{
			margin-top:0px;
			width: 100%;
			position: relative;
			z-index: 1;
	  	}

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
		.pr{
			margin-top:10%;
		}
		.pr img{
			width:100%;
			height: 800px;
		}

		.content{
			background-color: white;
			height: 100%;
			margin-top: 10%;
			display: inline-block;
		}

		.content img{
			width: 350px ;
			height: 350px;
			margin: 10px 10px 10px 10px;
			float: left;
		}

		.footer{
			width:100%;
			height: 100px;
			background: black;
		}
		
		button{
  				background:#3c3c3c;
  				color:#fff;
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
			
			#pw{
				color:red;
			}
	</style>
	<script>
		function go_login(){
			location.href="../login/loginForm.jsp";
		}
	</script>
</head>
<body>
	<%
		String id=(String)request.getParameter("id");
		String name=(String)request.getParameter("name");
		String ph=(String)request.getParameter("ph");
		int n_ph = Integer.parseInt(ph);
		
		String pw=null;
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			conn=Conn.getConnection();
			String sql="select *from `customer`";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				String db_id=rs.getString("c_id");
				if(id.equals(db_id.trim())){
					String db_name=rs.getString("c_name");
					if(name.equals(db_name.trim())){
						int db_ph=rs.getInt("c_tel");
						if(n_ph==db_ph) {
							pw=rs.getString("c_pw");
						}
					}
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			Conn.close(ps, conn);
		}
		
		if(id==null){
	%>
	<script type="text/javascript">
		alert("존재하지 않는 계정입니다.");
		history.go(-1);
	</script>
	<%
		}
		else{
	%>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
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
<li><a href="../custom/Choice_cus.jsp">HAND-MADE</a></li>
					<li><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></li>
					<li><a href="#" id="current">ACCOUNT</a>
						<ul>
							<li><a href="../login/loginForm.jsp">LOGIN</a></li>
							<li><a href="regFormImpl.jsp">JOIN US</a></li>
						</ul>
		  			</li>
		  		</ul>
		  </div>
	</div>
	<br><br><br><br><br>
	<div class="text-center">
		<p>Find!</p>
		<br>
		<p>Your PassWord</p>
		"<p id="pw"> <%=pw %></p>"
		<br><br>
		<button onclick="go_login()">Go Login</button>
	</div>
	<%
		}
	%>
</body>
</html>