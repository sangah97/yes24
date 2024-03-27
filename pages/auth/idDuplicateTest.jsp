<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.setContentType("text/html;charset=utf-8");
	request.setCharacterEncoding("utf-8");
	String home = request.getContextPath();
	String chk_id = request.getParameter("chk_id");
	
// 	RequestDispatcher dis = request.getRequestDispatcher("/IdChkCtrl");
// 	dis.forward(request, response);
	
	String dup_msg = request.getParameter("dup_msg");
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2><%=dup_msg %></h2>
</body>
</html>