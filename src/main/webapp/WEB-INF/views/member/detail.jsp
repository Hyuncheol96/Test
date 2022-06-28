<%--
  Created by IntelliJ IDEA.
  User: khc_9
  Date: 2022-06-26
  Time: 오후 3:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/board/save-form">글등록</a>
<a href="/board/findAll">글목록</a>

    <h2>회원정보</h2>
    <table>
        <tr>
            <th>회원번호</th>
            <th>아이디</th>
            <th>비밀번호</th>
        </tr>
        <tr>
            <td>${mem.id}</td>
            <td>${mem.memberId}</td>
            <td>${mem.memberPw}</td>
        </tr>
    </table>


</body>
</html>
