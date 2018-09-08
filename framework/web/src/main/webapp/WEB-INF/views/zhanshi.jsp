<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 迁旧。
  Date: 2018/8/11
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>外网展示页面</title>
</head>
<body>
<table>
    <tr><td>姓名</td><td>学号</td><td>年级</td><td>部门</td><td>职务</td><td>自我介绍</td><td>头像</td></tr>
    <c:forEach items="${showAllMember}" var="user">
        <tr>
            <%--<td>${user.id}</td>--%>
            <td>${user.userName}</td>
            <td>${user.userNumber}</td>
            <td>${user.userGrade}</td>
            <td>${user.userDepartment}</td>
            <td>${user.userJob}</td>
            <td>${user.userIntroduction}</td>
                <td><img src="${user.userImage}"></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
