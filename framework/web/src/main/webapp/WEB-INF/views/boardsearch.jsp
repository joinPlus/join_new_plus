<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/9/5
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>搜索公告信息页面</title>
</head>
<body>
<table border="1" cellspacing="0" cellpadding="0" style="text-align: center;font-size: 20px">
    <form method="post" action="${website}board/query">
        <tr>
            <th>序号</th>
            <th>id&nbsp&nbsp</th>
            <th>日期&nbsp&nbsp</th>
            <th>内容&nbsp&nbsp</th>
        </tr>
        <c:forEach items="${list}" var="board" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
                <td>${board.id}</td>
                <td>${board.date}</td>
                <td>${board.content}</td>
                <td><a href="${website}board/edit/${board.id}">编辑</a></td>
                <td><a href="${website}board/delete/${board.id}">删除</a></td>
            </tr>
        </c:forEach>
    </form>
</table>
<button><a href="${website}/activity/toHome">返回主页面</a></button>
</body>
</html>
