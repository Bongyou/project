<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="dao" class="Member.MemberDao"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Id Check</title>
<style>
	.check{
		text-align:center;
	}
</style>
</head>
<body>
	<%
		int rst=0;
		String id=(String)request.getParameter("id");
		rst=dao.idCheck(id);
		
		if(rst==1){
	%>
	<div class="check">
		���̵� �̹� �����մϴ�.
	</div>
	<%
		}
		else{
	%>
	<div class="check">
		��밡���� ���̵��Դϴ�.
	</div>
	<%
		}
	%>
</body>
</html>