<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/9/5
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
    <title>添加公告页面</title>
</head>
<body>
<div style="margin-top:180px;" align="center">
    <form name="form1" action="${website}/board/new" method="post">
        <h1>添加公告信息</h1>
        <table border="1">
            <tr>
                <td> 年 </td>
                <td>
                    <input type="text" name="year"/>
                </td>
            </tr>
            <tr>
                <td> 月 </td>
                <td>
                    <input type="text" name="month"/>
                </td>
            </tr>
            <tr>
                <td> 日 </td>
                <td>
                    <input type="text" name="day"/>
                </td>
            </tr>
            <tr>
                <td> 内容 </td>
                <td>
                    <input type="text" name="content"/>
                </td>
            </tr>
            <tr>
                <th align="center">
                    <a href="${website}/board/list"><input type="button" value="取消" ></a>
                </th>
                <th align="right">
                    <input type="submit" name="submit" value="确认增加" onclick="return Checking()"/>
                </th>
            </tr>
        </table>
    </form>
</div>
</body>
<script language="javascript">
    function Checking() {
        if (form1.year.value == "") {                                                                                       //输入判空
            window.alert("年输入不能为空");
            return false;
        } else if (form1.content.value == "") {
            window.alert("内容输入不能为空");
            return false;
        }
    }
</script>
</html>
