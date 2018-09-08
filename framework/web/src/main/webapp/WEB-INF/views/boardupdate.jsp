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
<html>
<head>
    <meta charset="utf-8" />
    <title>公告信息修改</title>
</head>
<style type="text/css">
    *{
        margin: 0px;
        padding: 0px;
    }
    .set{
        margin: 20% 37%;
    }
    .set p{
        font-size: 30px;
        text-align: center;
        margin: 30px ;
    }
</style>
<body>
<div class="set">

    <h1>公告信息修改</h1>

    <form name="form1" action="${website}board/update/${id}" method="post" >

        <table border="1">
            <tr>
                <td>日期</td>
                <td><input type="text" name="date" value="${board.date}" ></td>
            </tr>
            <tr>
                <td>内容</td>
                <td><input type="text" name="content" value="${board.content}"></td>
            </tr>
            <td><input type="submit" value="确定修改" id="sure" onclick="return Checking()"></td>
            <td>
                <a href="${website}/board/list"><input type="button" value="取消" ></a>
            </td>
            </tr>
        </table>
    </form>
</div>
</body>
<script language="javascript">
    function Checking() {
        if (form1.date.value == "") {
            window.alert("日期输入不能为空");
            return false;
        } else if (form1.content.value == "") {
            window.alert("内容输入不能为空");
            return false;
        }
    }
</script>
</html>
