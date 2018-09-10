<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 迁旧。
  Date: 2018/8/3
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<body>
<table>
    <tr><td>姓名</td><td>学号</td><td>年级</td><td>部门</td><td>职务</td><td>自我介绍</td></tr>
    <c:forEach items="${listAllUser}" var="user">
        <tr>
            <%--<td>${user.id}</td>--%>
            <td>${user.userName}</td>
            <td>${user.userNumber}</td>
            <td>${user.userGrade}</td>
            <td>${user.userDepartment}</td>
            <td>${user.userJob}</td>
            <td>${user.userIntroduction}</td>
                <td><img src="${user.userImage}"></td>
            <td><a href="${website}user/toUpdate?id=${user.id}"><button class="button1">修改</button> </a></td>
            <td><a href="${website}user/delUser?id=${user.id}"><button class="button2">删除</button> </a></td>
        </tr>
    </c:forEach>
</table>
<a href="${website}/user/toAdd"><button class="button3">增&nbsp;加</button></a>
<a href="${website}/user/logout"><button>退出登陆</button></a>
<form action="/user/addImages" method="post" enctype="multipart/form-data">
    <input type="file" name="uploadFile"/></br>
    <input type="submit" value="上传至" >
    <input type="text" name="userName" placeholder="请输入用户姓名">
</form>



</body>

</html>
