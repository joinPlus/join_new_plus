
<%--
  Created by IntelliJ IDEA.
  User: 芋头
  Date: 2018/6/2
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>主页</title>
</head>
<script type="text/javascript" charset="UTF-8" src="${pageContext.request.contextPath}/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="UTF-8" src="${pageContext.request.contextPath}/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="UTF-8" src="${pageContext.request.contextPath}/ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
    var ue = UE.getEditor('content');
</script>
<body>
<div style="margin-top:150px;" align="center">
    <form name="form" action="${pageContext.request.contextPath}/project/select" method="post">
        <input type="text"style="width: 300px;height: 40px;border-radius:5px;border:1px;" name="keyword" placeholder="请输入您想查找的项目有关信息" autocomplete="off">
        <input type="submit" value="搜索">
    </form>
    <table border="1" >
        <tr bgcolor="#a9a9a9">
            <th>编号</th><th>项目名称</th><th>项目日期</th><th>项目完成日期</th><th>项目内容</th><th colspan="2" align="center">操作</th>
        </tr>
        <c:forEach items="${projectList}"  var="project" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
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
                <td>
                    <a href="${website}project/toUpdate/${project.id}">修改</a>
                </td>
                <td>
                    <a href="${website}project/del/${project.id}">删除</a>
                </td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="7" align="right"><a href="/project/toAdd">添加</a></td>
        </tr>
    </table>
</div>
<div style="margin-top:250px;" align="center">
    <%--<form name="form" action="${pageContext.request.contextPath}/answer2/select" method="post">--%>
        <%--<input type="text"style="width: 300px;height: 40px;border-radius:5px;border:1px;"--%>
               <%--name="keyword" placeholder="请输入您想查找的姓名" autocomplete="off">--%>
        <%--<input type="submit" value="搜索">--%>
    <%--</form>--%>
        <%--<tr bgcolor="#a9a9a9">--%>
            <%--<th>编号</th><th>评论</th><th colspan="2" align="center">操作</th>--%>
        <%--</tr>--%>
        <%--<c:forEach items="${answer2List}"  var="answer2" varStatus="status">--%>
            <%--<tr>--%>
                <%--<td>${status.index+1}</td>--%>
                <%--<td>--%>
                        <%--${answer2.inquiry_answer2}--%>
                <%--</td>--%>
                <%--<td>--%>
                    <%--<a href="${website}answer2/toUpdate/${answer2.id}">修改</a>--%>
                <%--</td>--%>
                <%--<td>--%>
                    <%--<a href="${website}answer2/del/${answer2.id}">删除</a>--%>
                <%--</td>--%>
            <%--</tr>--%>
        <%--</c:forEach>--%>
        <%--<tr>--%>
            <%--<td colspan="7" align="right"><a href="/answer2/add">提交</a></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<input type="text" name="inquiry_answer2"/>--%>
        <%--</tr>--%>
        <tr>
            <td colspan="7" align="right"><a href="/answer2/list">前往超管页面</a></td>
        </tr>
        <form action="/answer2/add" method="post">
            <table border="1">
                <tr>
                    <td>
                        <%--<input type="text" name="inquiry_answer2"/>--%>
                        <textarea id="content" name="inquiry_answer2"></textarea>
                    </td>
                </tr>
                    <th align="center">
                        <a href="/answer2/list"><input type="button" value="取消" ></a>
                    </th>
                    <th align="right">
                        <input type="submit" name="submit" value="添加"/>
                    </th>
                </tr>
            </table>
        </form>

</div>
</body>
</html>
