<%--
  Created by IntelliJ IDEA.
  User: khc_9
  Date: 2022-06-26
  Time: 오후 6:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <h2>글 상세 페이지</h2>
    <table>
        <tr>
            <th>글 번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>내용</th>
            <th>조회수</th>
        </tr>
        <tr>
            <td>${boa.id}</td>
            <td>${boa.title}</td>
            <td>${boa.writer}</td>
            <td>${boa.con}</td>
            <td>${boa.hits}</td>
        </tr>
    </table>
    <a href="/board/findAll">글목록</a><br>

    작성자: <input type="text" name="writer" id="writer" value="${sessionScope.memberId}"><br>
    댓글내용: <input type="text" name="con" id="con"><br>
    <button onclick="comSave()">작성</button><br>
    <h2>댓글목록</h2>
    <div id="comment_list">
        <table>
            <tr>
                <th>댓글번호</th>
                <th>작성자</th>
                <th>내용</th>
            </tr>
            <c:forEach var="com" items="${comList}">
                <tr>
                    <td>${com.id}</td>
                    <td>${com.writer}</td>
                    <td>${com.con}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
<script>
    const comSave = () => {
        const boardId = '${boa.id}';
        const writer = document.getElementById("writer").value;
        const con = document.getElementById("con").value;
        const commentList = document.getElementById("comment_list");

        $.ajax({
            type: "post",
            url: "/comment/save",
            data: {"boardId": boardId, "writer": writer, "con": con},
            dataType: "json",
            success: function (result) {
                let output = '';
                output += '<table>';
                output += '<tr>';
                output += '<th>댓글번호</th>';
                output += '<th>작성자</th>';
                output += '<th>내용</th>';
                output += '</tr>';

                for (let i in result) {
                    output += '<tr>';
                    output += '<td>' + result[i].id + '</td>';
                    output += '<td>' + result[i].writer + '</td>';
                    output += '<td>' + result[i].con + '</td>'
                    output += '</tr>';
                }
                output += '</table>';
                commentList.innerHTML = output;

                document.getElementById("con").value = '';
            }
        });

    }
</script>
</html>
