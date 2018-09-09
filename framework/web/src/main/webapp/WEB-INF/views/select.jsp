<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: fujia
  Date: 2016/4/5
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>--%>
<html>
<head>
    <title>查询</title>
</head>
<%--<body><th colspan="2" align="center">操作</th>--%>
<div style="margin-top:150px;" align="center">
    <table border="1" >
        <tr bgcolor="#a9a9a9">
            <th>编号</th><th>项目名称</th><th>项目日期</th><th>项目完成日期</th><th>项目内容</th>
        </tr>
        <c:forEach items="${list}"  var="project" varStatus="status">
            <tr>
                <td>${project.id}</td>
                <td>
                        ${project.project_name}
                </td>
                <td>
                        ${project.project_date}
                </td>
                <td>
                        ${project.project_finish}
                </td>
                <td>
                        ${project.project_content}
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="/project/list"><input type="button" value="返回" ></a>
</div>
</body>
</html>
