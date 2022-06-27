<%--
  Created by IntelliJ IDEA.
  User: khc_9
  Date: 2022-06-26
  Time: 오후 5:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>글등록</h2>
    <form action="/board/save" method="post">
        제목: <input type="text" name="title"><br>
        작성자: <input type="text" name="writer" value="${sessionScope.memberId}" readonly>
        내용: <textarea name="con" cols="30" rows="10"></textarea><br>
        <input type="submit" value="글등록">
    </form>

</body>
</html>
