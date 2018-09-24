<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: 迁旧。
  Date: 2018/8/3
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="../../css/reset.css" />
    <link rel="stylesheet" href="../../css/common.css" />
    <link rel="stylesheet" href="../../css/DepartmentMembers.css" />
    <script type="text/javascript" src="../../js/jquery-3.3.1.js" ></script>
    <script type="text/javascript" src="../../js/common.js" ></script>
    <script type="text/javascript" src="../../js/DepartmentMembers.js" ></script>
    <title>部门成员介绍</title>
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
        <li><a href="">轮播图管理</a></li>
        <li><a href="">公告管理</a></li>
        <li><a href="">部门成员管理</a></li>
        <li><a href="">日历管理</a></li>
        <li><a href="">课件管理</a></li>
        <li><a href="">活动管理</a></li>
        <li><a href="">风采图片管理</a></li>
        <li><a href="">报名人员管理</a></li>
        <li><a href="">提交意见查看</a></li>
    </ul>
</div>


<!--部门成员管理部分-->
<div id="registration_form_title">
    <span>部门成员管理</span>
</div>
<div class="content">
    <table>
        <form action="/user/list" method="get">
        <tr>
            <th>成员姓名</th>
            <th>头像</th>
            <th>部门</th>
            <th>学号</th>
            <th>年级</th>
            <th>职务</th>
            <th>自我介绍</th>
            <th>操作</th>
        </tr>
            <c:forEach items="${listAllUser}" var="user">
        <tr>
            <td>${user.userName}</td>
            <td><img src="${user.userImage}" id="photo" /></td>
            <td>${user.userDepartment}</td>
            <td>${user.userNumber}</td>
            <td>${user.userGrade}</td>
            <td>${user.userJob}</td>
            <td>${user.userIntroduction}</td>
            <td>
                <a href="/user/delUser?id=${user.id}" title="删除">
                    <img src="../../img/delete.png" title="delete" />
                </a>
                <a href="/user/toUpdate?id=${user.id}" title="修改">
                    <img src="../../img/update.png" title="update" />
                </a>
            </td>
            </c:forEach>
            <div class="buttons">
                <a href="/user/toAdd"><button type="button" id="add">增加</button></a>
            </div>
        </tr>
</form>
</table>
</div>
</body>
</html>