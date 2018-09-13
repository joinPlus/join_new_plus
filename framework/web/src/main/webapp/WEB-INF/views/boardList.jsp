<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/9/5
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>卓音公告</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<a href="/board/add">添加公告</a>--%>
<%--<table border="1" cellspacing="0" cellpadding="0" style="text-align: center;font-size: 20px">--%>
    <%--<form method="post" action="${website}/board/list">--%>
        <%--<tr>--%>
            <%--<th>序号</th>--%>
            <%--<th>id&nbsp&nbsp</th>--%>
            <%--<th>日期&nbsp&nbsp</th>--%>
            <%--<th>内容&nbsp&nbsp</th>--%>
        <%--</tr>--%>
        <%--<c:forEach items="${boardList}" var="board" varStatus="status">--%>
            <%--<tr>--%>
                <%--<td>${status.index+1}</td>--%>
                <%--<td>${board.id}</td>--%>
                <%--<td>${board.year}</td>--%>
                <%--<td>${board.month}</td>--%>
                <%--<td>${board.day}</td>--%>
                <%--<td>${board.content}</td>--%>
                <%--<td><a href="${website}board/edit/${board.id}">编辑</a></td>--%>
                <%--<td><a href="${website}board/delete/${board.id}">删除</a></td>--%>
            <%--</tr>--%>
        <%--</c:forEach>--%>
    <%--</form>--%>
<%--</table>--%>

<%--<form method='get' action="${website}board/query">--%>
    <%--<input type="text" name="keyword">--%>
    <%--<input type="submit" value="按关键字搜索">--%>
<%--</form>--%>

<%--</body>--%>
<%--</html>--%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="../../css/base/reset.css" />
    <link rel="stylesheet" href="../../css/common/common1.css" />
    <link rel="stylesheet" href="../../css/widget/Board1.css" />
    <script type="text/javascript" src="../../js/jquery-3.3.1.js" ></script>
    <script type="text/javascript" src="../../js/common1.js" ></script>
    <script type="text/javascript" src="../../js/Board.js" ></script>
    <title>公告管理</title>
</head>
<body>
<!--公共部分-->
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
<!--公告后台管理-->
<div id="registration_form_title">
    <span>公告管理</span>
</div>
<div class="content">
    <table>
        <tr>
            <th>序号</th>
            <th>年</th>
            <th>月</th>
            <th>日</th>
            <th>内容</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${boardList}" var="board" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
                <td>${board.year}</td>
                <td>${board.month}</td>
                <td>${board.day}</td>
                <td>${board.content}</td>
                <td>
                    <a title="删除" href="${website}board/delete/${board.id}"><img src="../../img/delete.png" class="deletePic" /></a>
                    <a title="修改" href="${website}board/edit/${board.id}"><img src="../../img/update.png"  class="updatePic"/></a>
                    <%--<a href="${website}board/edit/${board.id}">编辑</a>--%>
                    <%--<a href="${website}board/delete/${board.id}">删除</a>--%>
                </td>
            </tr>
        </c:forEach>

    </table>

    <a href="/board/add"><button type="button" id="addbtn">增加</button></a>

</div>
</body>
</html>
