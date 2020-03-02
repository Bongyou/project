<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Member.MemberDao" %>
<%@ page import="util.Conn" %>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("euc-kr");
	String id=(String)request.getParameter("id");
	String pass=(String)request.getParameter("pass");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Login</title>
</head>
<body>
	<%
		int rst=0;
		
		String db_id=null;
		String db_pass=null;
		Connection conn= null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{
			conn=Conn.getConnection();
			String sql = "select * from `customer` where c_id='"+id+"'";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs.next()){
				db_id = rs.getString(1);
				if((db_id.trim()).equals(id.trim())){
					db_pass= rs.getString(3);
					if((db_pass.trim()).equals((pass.trim()))){
						rst=2;
					}
					else{
						rst=1;
					}
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			Conn.close(rs, ps, conn);
		}
		
		if(rst==2){
			session.setAttribute("loginId", id);
			session.setMaxInactiveInterval(60*60);
	%>

	<script type="text/javascript">
		location.href="../main.jsp";
	</script>

	<%
		}
		else if(rst==1){
	%>

	<script type="text/javascript">
		alert("비밀번호가 틀렸습니다.");
		history.go(-1);
	</script>
	<%
		}
		else{
	%>

	<script type="text/javascript">
		alert("존재하지 않는 아이디입니다.");
		history.go(-1);
	</script>

	<%
		}
	%>
</body>
</html>