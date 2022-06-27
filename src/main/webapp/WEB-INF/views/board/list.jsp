<%--
  Created by IntelliJ IDEA.
  User: khc_9
  Date: 2022-06-26
  Time: 오후 6:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>글목록</h2>
    <table>
        <tr>
            <td>글번호</td>
            <td>제목</td>
            <td>작성자</td>
            <td>내용</td>
            <td>조회수</td>
        </tr>
        <c:forEach var="boa" items="${boaList}">
            <tr>
                <td>${boa.id}</td>
                <td><a href="/board/detail?id=${boa.id}">${boa.title}</a></td>
                <td>${boa.writer}</td>
                <td>${boa.con}</td>
                <td>${boa.hits}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
