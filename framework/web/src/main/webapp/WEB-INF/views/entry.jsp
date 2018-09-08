<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/9/5
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <script type="text/javascript" src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <title>欢迎报名卓音工作室</title>
</head>

<body>
<form action="${website}entry/addFreshman" method="post" enctype="multipart/form-data">
    id为${myId}
    <p>姓名：<input type="text" name="name" id="name"></p>
    <p>性别：<input type="radio" name="sex" value="man" id="sex">男
        <input type="radio" name="sex" value="woman" id="sex">女
    </p>
    <p>学生账号：<input type="nummber" name="number" id="number"></p>
    <p>照片：<input type="file" name="uploadFile" id="photo"></p>
    <p>民族：<select name="nation" id="nation">
        <option value="ren">人族</option>
        <option value="shou">兽族</option>
        <option value="shen">神族</option>
    </select></p>
    <p>籍贯：<select name="nativePlace" id="nativePlace">
        <option value="bei">北半球🌎</option>
        <option value="nan">南半球</option>
    </select></p>
    <p>排名：<input type="number" name="rank" id="rank">/<input type="number" name="rankAll" id="rankAll"></p>
    <p>专业：<input type="radio" name="major" value="jisuanji" id="major">计算机
        <input type="radio" name="major" value="ruanjian" id="major">软件工程
    </p>
    <p>第一志愿：<input type="radio" name="volunteer1" value="qian" id="volunteer1">前端<input type="radio" name="volunteer1" value="hou" id="volunteer1">后端<input type="radio" name="volunteer1" value="chan" id="volunteer1">产品
    </p>
    <p>第二志愿：<input type="radio" name="volunteer2" value="qian" id="volunteer1">前端<input type="radio" name="volunteer2" value="hou" id="volunteer1">后端<input type="radio" name="volunteer2" value="chan" id="volunteer1">产品
    </p>
    <p>QQ：<input type="number" name="qq" id="qq"></p>
    <p>TEL：<input type="tel" name="phone" id="phone"></p>
    自我介绍：<textarea name="introduction" id="introduction"></textarea>
    <br>
    加入理由：<textarea name="reason" id="reason"></textarea>
    <p>是否服从调剂：<input type="radio" name="yon" value=1 id="yon">服从
        <input type="radio" name="yon" value=0 id="yon">不服从
    </p>
    <input type="submit">
</form>
<form action="${website}entry/update">
    <input type="text" name="id">
    <input type="submit">
</form>
</body>
<script>
    $("input:submit").click(function(){
        alert("提交成功,欢迎您"+$("#name").val());
    })
</script>
</html>

