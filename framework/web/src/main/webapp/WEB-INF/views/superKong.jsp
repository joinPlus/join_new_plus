<%--
  Created by IntelliJ IDEA.
  User: huawei
  Date: 2018/9/5
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>超级管理员</title>
</head>
<body>
<div style="margin-top:150px;" align="center">
    <form name="form" action="${pageContext.request.contextPath}/answer2/select" method="post">
        <input type="text"style="width: 300px;height: 40px;border-radius:5px;border:1px;" name="keyword" placeholder="请输入您想查找的建议" autocomplete="off">
        <input type="submit" value="搜索">
    </form>
    <table border="1" >
        <tr bgcolor="#a9a9a9">
            <th>编号</th><th>评论</th><th colspan="2" align="center">操作</th>
        </tr>
        <c:forEach items="${answer2List}"  var="answer2" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
                <td>
                        ${answer2.inquiry_answer2}
                </td>
                <td>
                    <a href="${website}answer2/del/${answer2.id}">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
