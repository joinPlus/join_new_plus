<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/9/5
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />
<html>
<head>
    <title>修改页面</title>
</head>
<body>
<form action="/activity/update/${id}" method="post" enctype="multipart/form-data">
    活动标题<input type="text" name="title" value="${activity.title}"><br>
    活动内容<input type="text"  name="content"value="${activity.content}"/>
    <h2>图片上传</h2>
    图片:<input type = "file" name="uploadFile"/><br/><br/>
    <input type="submit" value="上传"/>
</form>
</body>
</html>
