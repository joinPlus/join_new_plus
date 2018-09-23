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
    <script type="text/javascript" src="../../js/Activities_Change.js"></script>
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
                <th>图片1</th>
                <th>图片2</th>
                <th>图片3</th>
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
                    <img src="${activity.image1}" width="118px" height="165.2px" />
                    <input type="file" name="uploadFile1" id="change_file1" style="display: none"/><!-- 被隐藏 -->
                        <div id="new_tool1">
                            <input type="text" name="photo_address1" id="photo_address1" placeholder="图片1路径" />
                            <button type="button" id="change_through1">更换图片</button>
                        </div>
                </td>
                <td>
                    <%--<img src="../../resource/img/ensure.png" width="230px" height="180px" />--%>
                    <img src="${activity.image2}" width="118px" height="165.2px" />
                    <input type="file" name="uploadFile2" id="change_file2" style="display: none"/><!-- 被隐藏 -->
                        <div id="new_tool2">
                            <input type="text" name="photo_address2" id="photo_address2" placeholder="图片2路径" />
                            <button type="button" id="change_through2">更换图片</button>
                        </div>
                </td>
                <td>
                    <%--<img src="../../resource/img/ensure.png" width="230px" height="180px" />--%>
                    <img src="${activity.image3}" width="118px" height="165.2px" />
                    <input type="file" name="uploadFile3" id="change_file3" style="display: none"/><!-- 被隐藏 -->
                        <div id="new_tool3">
                            <input type="text" name="photo_address3" id="photo_address3" placeholder="图片3路径" />
                            <button type="button" id="change_through3">更换图片</button>
                        </div>
                </td>
                <td>

                    <button type="submit">确认</button>
                    <a href="/activity/list"><button type="button">取消</button></a>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>