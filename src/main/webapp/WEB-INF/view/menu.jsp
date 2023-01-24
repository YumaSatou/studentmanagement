<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="dto.Tosho" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <style>
    p{
      text-align:center;
    }
  </style>
<title>生徒管理</title>
</head>
<body>
<h1><p>生徒管理</p></h1>
	<%
		Tosho ac = (Tosho)session.getAttribute("user");
	%>
	
	<p>ようこそ<%=ac.getName() %>さん</p>
</body>
</html>