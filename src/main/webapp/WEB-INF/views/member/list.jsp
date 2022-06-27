<%--
  Created by IntelliJ IDEA.
  User: khc_9
  Date: 2022-06-26
  Time: 오후 3:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>회원목록</h2>
    <table>
        <tr>
            <th>회원번호</th>
            <th>아이디</th>
            <th>비밀번호</th>
            <th>수정</th>
            <th>삭제</th>
        </tr>
        <c:forEach var="mem" items="${memList}">
            <tr>
                <td>${mem.id}</td>
                <td><a href="/member/detail?id=${mem.id}">${mem.memberId}</a></td>
                <td>${mem.memberPw}</td>
                <td><button onclick="aa('${mem.id}')">수정</button></td>
                <td><button onclick="dd('${mem.id}')">삭제</button></td>
            </tr>
        </c:forEach>
    </table>

</body>
<script>
    const dd = (id) => {
        location.href = "/member/delete?id=" + id;

    }

    const aa = (id) => {
        location.href = "/member/update-form?id=" + id;
    }

</script>
</html>
