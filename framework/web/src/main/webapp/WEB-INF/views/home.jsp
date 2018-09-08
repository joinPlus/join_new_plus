<%--
  Created by IntelliJ IDEA.
  User: 迁旧。
  Date: 2018/8/3
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页面</title>
</head>
<body>
<form action="${website}/user/serUser" method="post">
    <div class="login_peo">
        <span></span>
        <input type="text" name="userName" value="" />
    </div>
    <hr/>
    <div class="login_pass">
        <span></span>
        <input type="password" name="userPassword" value=""/>
    </div>
    <input type="submit" class="login_icon" value="login"/>
</form>
<%--<a href="/WEB-INF/views/register.jsp"><button>注册</button></a>--%>
</body>
</html>
