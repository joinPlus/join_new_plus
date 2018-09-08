<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 迁旧。
  Date: 2018/8/4
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${resultList}" var="user" >
    <tr>
        <td>${user.userName}</td>
        <td>${user.userImage}</td>
        <td>${user.userDepartment}</td>
        <td>${user.userNumber}</td>
        <td>${user.userGrade}</td>
        <td>${user.userJob}</td>
        <td>${user.userIntroduction}</td>
    </tr>
</c:forEach>
</body>
</html>
