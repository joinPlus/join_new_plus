<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <title>ueditor demo</title>
</head>

<body>
<!-- 加载编辑器的容器 -->
<%--<script id="container" name="content" type="text/plain">--%>
<%--这里写你的初始化内容--%>
<%--</script>--%>
<!-- 配置文件 -->
<script type="text/javascript" src="../../UEditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="../../UEditor/ueditor.all.js"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
    var ue = UE.getEditor('container');
</script>
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
    <tr>
        <td colspan="7" align="right"><a href="/answer2/list">前往超管页面</a></td>
    </tr>
    <form action="/answer2/add" method="post">
        <table border="1">
            <tr>
                <td>
                    <%--<input type="text" name="inquiry_answer2"/>--%>
                    <textarea id="container" name="inquiry_answer2" type="text/plain"></textarea>
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