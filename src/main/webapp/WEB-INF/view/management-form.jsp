<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dto.Tosho" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録画面</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String errorCode = request.getParameter("error");
		if(errorCode != null && errorCode.equals("1")){
			Tosho ac = (Tosho)session.getAttribute("input_data");
	%>
		<p style="color:red">登録に失敗しました。</p>
		<h3>新規生徒登録</h3>
		<form action="RegisterConfirmServlet" method="post">
			名前：<input type="text" name="name" value="<%=ac.getName()%>"><br>
			メール：<input type="email" name="email" value="<%=ac.getMail()%>"><br>
			学科：<input type="text" name="subject" value="<%=ac.getSubject() %>"><br>
			パスワード：<input type="password" name="pw"><br>
			<input type="submit" value="登録">
		</form>
	<%
		} else {
	%>
	<h3>新規生徒登録</h3>
	<form action="RegisterConfirmServlet" method="post">
		名前：<input type="text" name="name"><br>
		メール：<input type="email" name="email"><br>
		学科：<input type="text" name="subject"><br>
		パスワード：<input type="password" name="pw"><br>
		<input type="submit" value="登録">
	</form>
	<%
		}
	%>
		<h2><a href="./" style="color:black">戻る</a></h2>
</body>
</html>