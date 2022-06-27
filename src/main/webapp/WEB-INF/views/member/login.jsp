<%--
  Created by IntelliJ IDEA.
  User: khc_9
  Date: 2022-06-26
  Time: 오후 2:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>로그인 페이지</h2>
<form action="/member/login" method="post">
    아이디: <input type="text" name="memberId"><br>
    비밀번호: <input type="text" name="memberPw"><br>
    <input type="submit" value="로그인">
</form>
</body>
</html>
