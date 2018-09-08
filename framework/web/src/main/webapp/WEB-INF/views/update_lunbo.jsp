<%--
  Created by IntelliJ IDEA.
  User: 芋头
  Date: 2018/6/2
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
    <title>修改页面</title>
</head>
<body>
<div style="margin-top:180px;" align="center">
    <form action="${website}lunbo/update/${lunbo.id}" method="post" enctype="multipart/form-data">
        <table border="1">
            <tr>
                <td> 图片名称 </td>
                <td>
                    <input type="text" name="name" value="${lunbo.name}"/>
                </td>
            </tr>
            <tr>
                <td> 图片 </td>
                <td>
                    <input type="text" name="path" value="${lunbo.path}" hidden/>
                    <img name="path" src="${lunbo.path}"/>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <a href="/lunbo/list"><input type="button" value="取消" ></a>
                </th>
                <th align="right">
                    <input type="submit" name="submit" value="修改"/>
                </th>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
