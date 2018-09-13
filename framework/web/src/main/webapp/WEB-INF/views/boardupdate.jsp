<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/9/5
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%--<html>--%>
<%--<head>--%>
    <%--<meta charset="utf-8" />--%>
    <%--<title>公告信息修改</title>--%>
<%--</head>--%>
<%--<style type="text/css">--%>
    <%--*{--%>
        <%--margin: 0px;--%>
        <%--padding: 0px;--%>
    <%--}--%>
    <%--.set{--%>
        <%--margin: 20% 37%;--%>
    <%--}--%>
    <%--.set p{--%>
        <%--font-size: 30px;--%>
        <%--text-align: center;--%>
        <%--margin: 30px ;--%>
    <%--}--%>
<%--</style>--%>
<%--<body>--%>
<%--<div class="set">--%>

    <%--<h1>公告信息修改</h1>--%>

    <%--<form name="form1" action="${website}board/update/${id}" method="post" >--%>

        <%--<table border="1">--%>
            <%--<tr>--%>
                <%--<td>年</td>--%>
                <%--<td><input type="text" name="year" value="${board.year}" ></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>月</td>--%>
                <%--<td><input type="text" name="month" value="${board.month}" ></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>日</td>--%>
                <%--<td><input type="text" name="day" value="${board.day}" ></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>内容</td>--%>
                <%--<td><input type="text" name="content" value="${board.content}"></td>--%>
            <%--</tr>--%>
            <%--<td><input type="submit" value="确定修改" id="sure" onclick="return Checking()"></td>--%>
            <%--<td>--%>
                <%--<a href="${website}/board/list"><input type="button" value="取消" ></a>--%>
            <%--</td>--%>
            <%--</tr>--%>
        <%--</table>--%>
    <%--</form>--%>
<%--</div>--%>
<%--</body>--%>
<%--<script language="javascript">--%>
    <%--function Checking() {--%>
        <%--if (form1.day.value == "") {--%>
            <%--window.alert("日输入不能为空");--%>
            <%--return false;--%>
        <%--} else if (form1.content.value == "") {--%>
            <%--window.alert("内容输入不能为空");--%>
            <%--return false;--%>
        <%--}--%>
    <%--}--%>
<%--</script>--%>
<%--</html>--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../css/base/reset.css" />
    <link rel="stylesheet" href="../../css/common/common1.css" />
    <link rel="stylesheet" href="../../css/widget/Board_add.css" />
    <script type="text/javascript" src="../../js/jquery-3.3.1.js" ></script>
    <script type="text/javascript" src="../../js/common1.js" ></script>
    <script type="text/javascript" src="../../js/Board_add.js" ></script>
    <title>公告管理修改界面</title>
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
<div id="registration_form_title">
    <span>公告管理</span>
</div>
<!--公告后台管理页面的修改页面-->
<div class="content">
    <form action="${website}board/update/${id}" method="post">
        <table>
            <tr>
                <td>年：</td>
                <td>
                    <input type="text" name="year" value="${board.year}" id="year"/>
                </td>
            </tr>
            <tr>
                <td>月：</td>
                <td>
                    <input type="text" name="month" value="${board.month}" id="month"/>
                </td>
            </tr>
            <tr>
                <td>日：</td>
                <td>
                    <input type="text" name="day" value="${board.day}" id="day"/>
                </td>
            </tr>
            <tr>
                <td>内容：</td>
                <td>
                    <textarea name="content" value="${board.content}"></textarea>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <!--注意type=button-->
                    <a href="${website}/board/list"><button type="button">返回</button></a>
                    <input type="submit" name="" value="提交" id="submit" />
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
