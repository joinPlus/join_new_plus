<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/9/5
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加学生信息</title>
</head>
<body>
<form action="/activity/add" method="post" enctype="multipart/form-data">
    活动标题<input type="text" name="title"/><br/>
    活动内容<input type="text"  name="content"/>
    <h2>图片上传</h2>
    图片:<input type = "file" name="uploadFile"/><br/><br/>
    <input type="submit" value="上传"/>
</form>
</body>
</html>
