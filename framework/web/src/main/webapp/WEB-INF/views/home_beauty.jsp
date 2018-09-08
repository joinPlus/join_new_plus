<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: liangll
  Date: 2018/8/3
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1" >
    <tr bgcolor="#a9a9a9">
        <th>图片名称</th><th>图片</th><th colspan="2" align="center">操作</th>
    </tr>
    <c:forEach items="${beautyList}"  var="beauty" varStatus="status">
        <%--就是在这alt+enter就可以导入的那个jar，鼠标放在c上 就看到了--%>
        <tr>
            <td>
                    ${beauty.name}
            </td>
            <td>
                    <img src="${beauty.path}"/>
            </td>
            <td>
                <a href="${website}beauty/toUpdate/${beauty.id}">修改</a>
                <a href="${website}beauty/del/${beauty.id}">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>
<form action="/beauty/add" method="post" enctype="multipart/form-data">
    <input type='text'  name='name'/>
    <h2>文件上传</h2>
    文件:<input type = "file" name="uploadFile"/><br/><br/>
    <input type="submit" value="上传"/>
</form>
</body>
</html>
