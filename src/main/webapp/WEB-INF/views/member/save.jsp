<%--
  Created by IntelliJ IDEA.
  User: khc_9
  Date: 2022-06-26
  Time: 오후 1:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>회원가입</h2>
    <form action="/member/save" method="post" name="sform">
        아이디: <input type="text" name="memberId"><br>
        비밀번호 <input type="text" name="memberPw"><br>
        <input type="button" onclick="btn1()" value="회원가입">
    </form>
</body>
<script>
    const btn1 = () => {
        sform.submit();
    }
</script>
</html>
