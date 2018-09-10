<%--
  Created by IntelliJ IDEA.
  User: huawei
  Date: 2018/9/5
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%--<html>--%>
<%--<head>--%>
    <%--<title>超级管理员</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div style="margin-top:150px;" align="center">--%>
    <%--<form name="form" action="${pageContext.request.contextPath}/answer2/select" method="post">--%>
        <%--<input type="text"style="width: 300px;height: 40px;border-radius:5px;border:1px;" name="keyword" placeholder="请输入您想查找的建议" autocomplete="off">--%>
        <%--<input type="submit" value="搜索">--%>
    <%--</form>--%>
    <%--<table border="1" >--%>
        <%--<tr bgcolor="#a9a9a9">--%>
            <%--<th>编号</th><th>评论</th><th colspan="2" align="center">操作</th>--%>
        <%--</tr>--%>
        <%--<c:forEach items="${answer2List}"  var="answer2" varStatus="status">--%>
            <%--<tr>--%>
                <%--<td>${status.index+1}</td>--%>
                <%--<td>--%>
                        <%--${answer2.inquiry_answer2}--%>
                <%--</td>--%>
                <%--<td>--%>
                    <%--<a href="${website}answer2/del/${answer2.id}">删除</a>--%>
                <%--</td>--%>
            <%--</tr>--%>
        <%--</c:forEach>--%>
    <%--</table>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../../css/base/reset.css" />
    <link rel="stylesheet" type="text/css" href="../../css/common/Title&Sidebar.css" />
    <link rel="stylesheet" type="text/css" href="../../css/widget/Suggestions.css" />
    <script type="text/javascript" src="../../js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../../js/Title&Sidebar.js"></script>
    <script type="text/javascript" src="../../js/Suggestions.js"></script>
</head>
<body>
<div id="title">
    <div id="title_words">
        <span>卓音工作室后台管理</span>
    </div>
    <div id="user">
        <ul>
            <li id="head_img">
                <a href="">
                    <img src="../../resource/img/ensure.png" width="35px" height="35px" />
                    <span>haha,欢迎您</span>
                </a>
            </li>
            <li>
                <a href="首页">
                    注销
                </a>
            </li>
        </ul>
    </div>
</div>
<div id="sidebar">
    <ul>
        <li></li>
        <li><a href="">轮播图管理</a></li>
        <li><a href="">公告管理</a></li>
        <li><a href="">部门成员管理</a></li>
        <li><a href="">日历管理</a></li>
        <li><a href="lessonFiles.html">课件管理</a></li>
        <li><a href="">活动管理</a></li>
        <li><a href="ActivitiesImg.html">风采图片管理</a></li>
        <li><a href="registration_form.html">报名人员管理</a></li>
        <li><a href="Suggestions.html">提交意见查看</a></li>
    </ul>
</div>
<div id="Suggestions_title">
    <span>提交意见查看</span>
</div>
<div id="submit_suggestions">
    <table id="Suggestions_form">
        <tr>
            <th>序号</th>
            <th>意见</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${answer2List}"  var="answer2" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
                <td>
                        ${answer2.inquiry_answer2}
                </td>
                <td>
                    <a href="${website}answer2/del/${answer2.id}"><button type="submit" value="删除">删除</button></a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
