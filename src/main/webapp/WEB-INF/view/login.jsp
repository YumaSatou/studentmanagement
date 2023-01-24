	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <style>
    p{
      text-align:center;
    }
  </style>
<title>ログイン画面</title>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("error") != null){	
	%>
	<form action="LoginServlet" method="post">
		<h1><p>【ユーザーログイン】</p></h1><br>
		<p>メールアドレス<br><input type="text" name="mail" value="<%=request.getParameter("mail") %>"></p><br>
		<p>PW<br><input type="password" name="pw"></p><br>
		<p><input type="submit" value="ログイン"></p>
	</form>
	<%
		} else {
	%>
	<form action="LoginServlet" method="post">
		<h1><p>【ユーザーログイン】<br></p></h1>
		<p>メールアドレス<br><input type="text" name="mail"></p><br>
		<p>PW<br><input type="password" name="pw"></p><br>
		<p><input type="submit" value="ログイン"></p>
	</form>
	<%
		}
	%>
	<a href="index.jsp">戻る</a>
</body>
</html>