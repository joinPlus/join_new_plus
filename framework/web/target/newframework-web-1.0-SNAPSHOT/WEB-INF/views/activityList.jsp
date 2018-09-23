<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/9/4
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<html>--%>
<%--<head>--%>
<%--<title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<a href="/activity/toAdd">添加学生信息</a>--%>
<%--<table border="1" cellspacing="0" cellpadding="0" style="text-align: center;font-size: 20px">--%>
<%--${message}--%>
<%--<form method="post" action="${website}/activity/list">--%>
<%--<tr>--%>
<%--<th>序号</th>--%>
<%--<th>id&nbsp&nbsp</th>--%>
<%--<th>标题&nbsp&nbsp</th>--%>
<%--<th>内容&nbsp&nbsp</th>--%>
<%--<th>图片&nbsp&nbsp</th>--%>
<%--</tr>--%>
<%--<c:forEach items="${activityList}" var="activity" varStatus="status">--%>
    <%--<tr>--%>
        <%--<td>${status.index+1}</td>--%>
        <%--<td>${activity.id}</td>--%>
        <%--<td>${activity.title}</td>--%>
        <%--<td>${activity.content}</td>--%>
        <%--<td><img src="${activity.image}"></td>--%>
        <%--<td><a href="${website}activity/edit/${activity.id}">编辑</a></td>--%>
        <%--<td><a href="${website}activity/delete/${activity.id}">删除</a></td>--%>
    <%--</tr>--%>
<%--</c:forEach>--%>
<%--</form>--%>
<%--</table>--%>

<%--</body>--%>
<%--</html>--%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../../css/base/reset.css" />
    <link rel="stylesheet" type="text/css" href="../../css/common/Title&Sidebar.css" />
    <link rel="stylesheet" type="text/css" href="../../css/widget/Activities.css" />
    <script type="text/javascript" src="../../js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../../js/Title&Sidebar.js"></script>
    <script type="text/javascript" src="../../js/Activity.js"></script>
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
                    <img src="../../img/ensure.png" width="35px" height="35px" />
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
        <li><a href="${website}lunbo/list">轮播图管理</a></li>
        <li><a href="${website}board/list">公告管理</a></li>
        <li><a href="${website}user/list">部门成员管理</a></li>
        <li><a href="">日历管理</a></li>
        <li><a href="lessonFiles.html">课件管理</a></li>
        <li><a href="${website}activity/list">活动管理</a></li>
        <li><a href="${website}beauty/list">风采图片管理</a></li>
        <li><a href="${website}entry/listAll">报名人员管理</a></li>
        <li><a href="Suggestions.html">提交意见查看</a></li>
    </ul>
</div>
<div id="acti_title">
    <span>活动管理</span>
</div>
<div id="activity">
    <table id="activities_table">
        <tr>
            <th style="width: 70px;">序号</th>
            <th style="width: 150px;">标题</th>
            <th style="width: 300px;">内容</th>
            <th style="width: 300px;">图片1</th>
            <th style="width: 300px;">图片2</th>
            <th style="width: 300px;">图片3</th>
            <th style="width: 130px;">状态</th>
            <th style="width: 290px;">操作</th>
        </tr>
        <c:forEach items="${activityList}" var="activity" varStatus="status">
        <tr>
            <td>${status.index+1}</td>
            <td>${activity.title}</td>
            <td>${activity.content}</td>
            <td><img src="${activity.image1}" width="230px" height="180px"/></td>
            <td><img src="${activity.image2}" width="230px" height="180px"/></td>
            <td><img src="${activity.image3}" width="230px" height="180px"/></td>
            <td>${activity.state}</td>
            <td>
                <a href="${website}activity/edit/${activity.id}"><button type="button" id="update" value="修改">修改</button></a>
                <a href="${website}activity/delete/${activity.id}"><button type="button" id="delete" value="删除">删除</button></a>
            </td>
        </tr>
        </c:forEach>
    </table>
    <div id="add_tool">
        <a href="/activity/toAdd"><button type="button" id="add" value="增加">增加</button></a>
    </div>
</div>
</body>
</html>