<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/9/5
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>卓音公告</title>
</head>
<body>
<a href="/board/add">添加公告</a>
<table border="1" cellspacing="0" cellpadding="0" style="text-align: center;font-size: 20px">
    <form method="post" action="${website}/board/list">
        <tr>
            <th>序号</th>
            <th>id&nbsp&nbsp</th>
            <th>日期&nbsp&nbsp</th>
            <th>内容&nbsp&nbsp</th>
        </tr>
        <c:forEach items="${boardList}" var="board" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
                <td>${board.id}</td>
                <td>${board.year}</td>
                <td>${board.month}</td>
                <td>${board.day}</td>
                <td>${board.content}</td>
                <td><a href="${website}board/edit/${board.id}">编辑</a></td>
                <td><a href="${website}board/delete/${board.id}">删除</a></td>
            </tr>
        </c:forEach>
    </form>
</table>

<form method='get' action="${website}board/query">
    <input type="text" name="keyword">
    <input type="submit" value="按关键字搜索">
</form>

</body>
</html>

