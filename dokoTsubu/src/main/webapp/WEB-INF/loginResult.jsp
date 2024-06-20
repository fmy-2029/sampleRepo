<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="model.User" %>
    <%
    User loginUser = (User)session.getAttribute("loginUser");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン結果</title>
</head>
<body>
<h1>ログイン</h1>
<% if(loginUser != null){ %>
<p>ログインに成功しました</p>
<p>ようこそ<%= loginUser.getName()%>さん</p>
 <a href = "diligence.jsp">勤怠登録</a>
 <a href = "Main">勤怠情報参照</a>
<%}else { %>
<p>ログインに失敗しました</p>
<p>ユーザーIDまたはパスワードが違います</p>
<a href = "index.jsp">ログインへ</a>
<%}%>
</body>
</html>