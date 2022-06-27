<%--
  Created by IntelliJ IDEA.
  User: khc_9
  Date: 2022-06-26
  Time: 오후 4:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <form action="/member/update" method="post">
        <input type="hidden" name="id" value="${mem.id}">
    아이디: <input type="text" name="memberId" value="${mem.memberId}" readonly><br>
    비밀번호 <input type="text" name="memberPw" value="${mem.memberPw}"><br>
    <input type="submit" value="수정">
</form>

</body>
</html>
