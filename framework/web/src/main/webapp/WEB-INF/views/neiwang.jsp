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
    <title>Title1</title>
</head>

<body>
<form action="${website}/user/list" method="get">
    <input type="submit"  value="进入后台管理页面"/>
</form>
<%--<td><a href="${website}/user/selectUser?keyword=前端部"><button class="button1">前端部</button> </a></td>--%>
<%--<td><a href="${website}/user/selectUser?keyword=后端部"><button class="button2">后端部</button> </a></td>--%>
<%--<td><a href="${website}/user/selectUser?keyword=产品部"><button class="button3">产品部</button> </a></td>--%>
<td><a href="${website}/user/show"><button class="button3">进入前端展示页面</button> </a></td>
</body>

</html>
