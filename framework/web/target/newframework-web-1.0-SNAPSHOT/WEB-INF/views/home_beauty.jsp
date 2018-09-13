<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: liangll
  Date: 2018/8/3
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../../css/base/reset.css" />
    <link rel="stylesheet" type="text/css" href="../../css/common/Title&Sidebar.css" />
    <link rel="stylesheet" type="text/css" href="../../css/widget/ActivitiesImg.css" />
    <script type="text/javascript" src="../../js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../../js/Title&Sidebar.js"></script>
    <script type="text/javascript" src="../../js/ActivitiesImg.js"></script>
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
        <li><a href="/lunbo/list">轮播图管理</a></li>
        <li><a href="">公告管理</a></li>
        <li><a href="">部门成员管理</a></li>
        <li><a href="">日历管理</a></li>
        <li><a href="lessonFiles.html">课件管理</a></li>
        <li><a href="">活动管理</a></li>
        <li><a href="/beauty/list">风采图片管理</a></li>
        <li><a href="registration_form.html">报名人员管理</a></li>
        <li><a href="Suggestions.html">提交意见查看</a></li>
    </ul>
</div>
<div id="actiImg_title">
    <span>卓音风采图片管理</span>
</div>
<div id="activities">
        <table id="activitiesImg">
            <tr>
                <th>标题</th>
                <th>图片</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${beautyList}"  var="beauty" varStatus="status">
            <tr>
                <td>${beauty.name}</td>
                <td><img src="${beauty.path}" width="230px" height="180px" /></td>
                <td>
                    <a href="${website}beauty/toUpdate/${beauty.id}"><button type="submit"  value="修改">修改</button></a>
                    <a href="${website}beauty/del/${beauty.id}"><button type="submit"  value="修改">删除</button></a>

                </td>
            </tr>
            </c:forEach>
        </table>
        <div id="tool">
            <form action="/beauty/add" method="post" enctype="multipart/form-data">
            <button id="through">浏览图片</button>
            <input type="file" name="uploadFile" id="file_through" /><!-- 被隐藏 -->
            <input type="text" name="name" id="photo_title" placeholder="请输入图片标题" />
            <button type="submit" name="photo_submit" id="photo_submit">确认上传</button>
            </form>
        </div>
</div>
</body>
</html>
