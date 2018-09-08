<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/9/4
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/activity/toAdd">添加学生信息</a>
<table border="1" cellspacing="0" cellpadding="0" style="text-align: center;font-size: 20px">
    ${message}
    <form method="post" action="${website}/activity/list">
        <tr>
            <th>序号</th>
            <th>id&nbsp&nbsp</th>
            <th>标题&nbsp&nbsp</th>
            <th>内容&nbsp&nbsp</th>
            <th>图片&nbsp&nbsp</th>
        </tr>
        <c:forEach items="${activityList}" var="activity" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
                <td>${activity.id}</td>
                <td>${activity.title}</td>
                <td>${activity.content}</td>
                <td><img src="${activity.image}"></td>
                <td><a href="${website}activity/edit/${activity.id}">编辑</a></td>
                <td><a href="${website}activity/delete/${activity.id}">删除</a></td>
            </tr>
        </c:forEach>
    </form>
</table>

</body>
</html>
