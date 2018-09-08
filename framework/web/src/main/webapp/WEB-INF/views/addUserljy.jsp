<%--
  Created by IntelliJ IDEA.
  User: 迁旧。
  Date: 2018/8/3
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <form method="post" action="${website}user/addUser">
        <tr><td>姓名<input type="text" name="userName"></td></tr>
        <tr><td>&nbsp;&nbsp;</td></tr>
        <tr><td>学号<input type="text" name="userNumber"></td></tr>
        <tr><td>&nbsp;&nbsp;</td></tr>
        <tr><td>年级<input type="text" name="userGrade"></td></tr>
        <tr><td>&nbsp;&nbsp;</td></tr>
        <tr><td>部门<input type="text" name="userDepartment"></td></tr>
        <tr><td>&nbsp;&nbsp;</td></tr>
        <tr><td>职务<input type="text" name="userJob"></td></tr>
        <tr><td>&nbsp;&nbsp;</td></tr>
        <tr><td>自我介绍<input type="text" name="userIntroduction"></td></tr>
        <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" value="确定添加"></td></tr>
    </form>
</table>
</body>
</html>
