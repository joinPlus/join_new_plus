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
<%--<html>--%>
<%--<head>--%>
    <%--<title>修改页面</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<form action="/activity/update/${id}" method="post" enctype="multipart/form-data">--%>
    <%--活动标题<input type="text" name="title" value="${activity.title}"><br>--%>
    <%--活动内容<input type="text"  name="content"value="${activity.content}"/>--%>
    <%--<h2>图片上传</h2>--%>
    <%--图片:<input type = "file" name="uploadFile"/><br/><br/>--%>
    <%--<input type="submit" value="上传"/>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../../css/base/reset.css" />
    <link rel="stylesheet" type="text/css" href="../../css/common/Title&Sidebar.css" />
    <link rel="stylesheet" type="text/css" href="../../css/widget/Activities_change.css" />
    <script type="text/javascript" src="../../js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../../js/Title&Sidebar.js"></script>
    <script type="text/javascript" src="../../js/Activities_change.js"></script>
</head>
<body>
<div id="title">
    <div id="title_words">
        <span>活动信息修改</span>
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
        <li><a href="activityList.jsp">活动管理</a></li>
        <li><a href="ActivitiesImg.html">风采图片管理</a></li>
        <li><a href="registration_form.html">报名人员管理</a></li>
        <li><a href="Suggestions.html">提交意见查看</a></li>
    </ul>
</div>
<div id="change_title">
    <span>图片修改</span>
</div>
<div id="load_table">
    <form action="${website}activity/update/${id}" method="post" enctype="multipart/form-data">
        <table id="simgle_photo">
            <tr>
                <th>标题</th>
                <th>活动内容</th>
                <th>图片</th>
                <th style="width: 250px;">操作</th>
            </tr>
            <tr>
                <td>
                    <input type="text" name="title" value="${activity.title}" />
                </td>
                <td>
                    <input type="text"  name="content" value="${activity.content}"/>
                </td>
                <td>
                    <%--<img src="../../resource/img/ensure.png" width="230px" height="180px" />--%>
                    <img src="${activity.image}" width="118px" height="165.2px" />
                    <input type="file" name="uploadFile" id="change_file" /><!-- 被隐藏 -->
                </td>
                <td>
                    <div id="new_tool">
                        <input type="text" name="photo_address" id="photo_address" placeholder="图片路径" />
                        <button type="button" id="change_through">更换图片</button>
                    </div>
                    <button type="submit">确认</button>
                    <a href="/activity/list"><button type="button">取消</button></a>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>