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
    <meta charset="utf-8" />
    <script type="text/javascript" src="../../js/jquery-3.3.1.js" ></script>
    <script type="text/javascript" src="../../js/common_slide.js" ></script>
    <script type="text/javascript" src="../../js/slide.js"></script>
    <link rel="stylesheet" href="../../css/base/reset.css" />
    <link rel="stylesheet" href="../../css/common_slide.css" />
    <link rel="stylesheet" href="../../css/slide.css" />
    <title>轮播图管理</title>
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
<!--轮播图管理部分-->
<div id="registration_form_title">
    <span>轮播图管理</span>
</div>
<div class="content">
        <table border="1">
            <tr>
                <th>图片</th>
                <th>名称</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${lunboList}"  var="lunbo" varStatus="status">
            <tr>
                <td><img src="${lunbo.path}"/></td>
                <td>${lunbo.name}</td>
                <td>
                    <a href="${website}lunbo/toUpdate/${lunbo.id}">
                        <img src="../../img/common/change.png" class="update" />
                    </a>
                    <a href="${website}lunbo/del/${lunbo.id}">
                        <img src="../../img/common/delete.png"  class="delete"/>
                    </a>
                </td>
            </tr>
            </c:forEach>
        </table>
        <div class="buttons">
            <form action="/lunbo/add" method="post" enctype="multipart/form-data">
                <span>名称：</span>
                <input type="text" name="name" id="picName" />
                <button id="view">浏览</button>
                <input type="file" name="uploadFile" id="file" />
                <input type="submit" name="submit" id="submit" value="上传" />
            </form>
        </div>
</div>
</body>
</html>
