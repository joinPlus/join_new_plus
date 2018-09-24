<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 终老。
  Date: 2018/8/2
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
    <td>序号</td>
    <td>公告名称</td>
    <td>文件</td>
    </tr>

    <c:forEach items="${list}" var="tg">
    <tr>
        <td>${tg.id}</td>
        <td>${tg.title}</td>
        <td><a href="/TongGao/downLoad?filename=${tg.file}">下载</a></td>
        <td><a href="/TongGao/delTongGao?id=${tg.id}">删除</a></td>
    </tr>
    </c:forEach>

</table>

<form action="/TongGao/add" method="post" enctype="multipart/form-data">
    <input type="text" name="user">
    <h2>文件上传</h2>
    文件:<input type="file" name="uploadFile"/><br/><br/>
    <input type="submit" value="上传"/>
</form>
</body>
</html>
