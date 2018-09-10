<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/9/5
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../../resource/css/base/reset.css" />
    <style type="text/css">
        a:hover{
            text-decoration: none;
        }
        #sidebar ul li:nth-child(9) a{
            background-color: rgb(78,84,101);
        }
        #registration_title{
            width: 700px;
            border-bottom: 1px solid;
            padding: 20px 0 10px 20px;
            margin-left: 10px;
            margin-bottom: 10px;
        }
        #registration_title span{
            font-size: 20px;
        }
        #registration{
            width: 100%;
            overflow: auto;
        }
        #research{
            padding-left: 20px;
            margin-bottom: 10px;
        }
        #regi_table form{
            display: inline-block;
        }
        #research button{
            width: 60px;
            height: 30px;
            margin-right: 10px;
            border: 1px solid rgb(35,38,46);
            border-radius: 8px;
            background-color: rgb(35,38,46);
            font-size: 14px;
            text-align: center;
            color: white;
            transition: all 0.5s;
        }
        #research form button:hover{
            border: 1px solid rgb(74,80,80);
            background-color: rgb(74,80,80);
        }
        #regi_table{
            width: 1070px;
            margin: 0 auto;
        }
        #regi_table tr{
            transition: all 0.5s;
        }
        #regi_table tr th,td{
            height: 50px;
            font-size: 14px;
            text-align: center;
            border: 1px solid rgb(226,226,226);
        }
        #regi_table button{
            width: 60px;
            height: 30px;
            margin-right: 3px;
            border: 1px solid rgb(35,38,46);
            border-radius: 8px;
            background-color: rgb(35,38,46);
            font-size: 14px;
            text-align: center;
            color: white;
            transition: all 0.5s;
        }
        #regi_table button:hover{
            border: 1px solid rgb(74,80,80);
            background-color: rgb(74,80,80);
        }
        #cover{
            width: 100%;
            height: 100%;
            padding: 10px;
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: 0;
            display: none;
            background-color: rgba(26,26,26,0.5);
            transition: background-color 0.3s ease-out;
        }
        #detail_table{
            width: 600px;
            position: relative;
            padding: 20px;
            margin: 0 auto;
            background-color: white;
        }
        #detail_table tr{
            border: 1px solid rgb(226,226,226);
        }
        #detail_table img{
            position: absolute;
            top: 0;
            right: 0;
        }
    </style>

</head>

<body>
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
        <li><a href="${website}entry/listAll">报名人员管理</a></li>
    </ul>
</div>
<div id="registration_title">
    <span>报名人员管理</span>
</div>
<div id="registration">
    <div id="research">
        <form action="${website}entry/searchVolunteer" method="post">
            <button type="submit" value="前端" name="volunteer">前端</button>
            <button type="submit" value="后端" name="volunteer">后端</button>
            <button type="submit" value="产品" name="volunteer">产品部</button>
        </form>
    </div>
    <div id="regi_table">
        <table>
            <tr>
                <th>序号</th>
                <th>姓名</th>
                <th>专业</th>
                <th>ID</th>
                <th>第一志愿</th>
                <th>第二志愿</th>
                <th>联系电话</th>
                <th>QQ</th>
                <th>操作</th>
                <th>审核状态</th>
            </tr>
            <c:forEach items="${freshmanList}"  var="Freshman" varStatus="status">
                <tr>
                    <td>${status.index+1}</td>
                    <td>${Freshman.name}</td>
                    <td>${Freshman.major}</td>
                    <td>${Freshman.id}</td>
                    <td>${Freshman.volunteer1}</td>
                    <td>${Freshman.volunteer2}</td>
                    <td>${Freshman.phone}</td>
                    <td>${Freshman.qq}</td>
                    <td>
                        <form action="${website}entry/searchById/${Freshman.id}">
                            <button type="submit" name="detail" class="detail" id="de_form">详情</button>
                        </form>
                        <form action="${website}entry/deleteFreshman/${Freshman.id}">
                            <button type="submit" name="cancel" class="cancel">删除</button>
                        </form>
                    </td>
                    <td>
                        <form action="${website}entry/getById/${Freshman.id}">
                            <button type="submit" name="examine" class="examined" value="通过">通过</button>
                        </form>
                        <form action="${website}entry/getById/${Freshman.id}">
                            <button type="submit" name="examine" class="examined_fail" value="不通过">不通过</button>
                        </form>
                            ${Freshman.pass}
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
<div id="cover">
    <div id="detail_table">
        <a id="close">
            <img src="../../resource/img/ensure.png" width="30px" height="30px" />
        </a>
        <p>东北师范大学卓音工作室报名表</p>
        <table>
            <tr>
                <th>姓名</th>
                <td>${freshman.name}</td>
                <th>性别</th>
                <td>${freshman.sex}</td>
                <th>民族</th>
                <td>${freshman.nation}</td>
                <td colspan="2" rowspan="3">${freshman.photo}</td>
            </tr>
            <tr>
                <th>学号</th>
                <td>${freshman.number}</td>
                <th>专业</th>
                <td>${freshman.major}</td>
                <th>排名</th>
                <td>${freshman.rank}/${freshman.rankAll}</td>
            </tr>
            <tr>
                <th>生源地</th>
                <td>${freshman.nativePlace}</td>
                <th>第一志愿</th>
                <td>${freshman.volunteer1}</td>
                <th>第二志愿</th>
                <td>${freshman.volunteer2}</td>
            </tr>
            <tr>
                <th>手机</th>
                <td>${freshman.phone}</td>
                <th>QQ</th>
                <td>${freshman.qq}</td>
                <th>是否服从调剂</th>
                <td>haha</td>
                <th>审核状态</th>
                <td>haha</td>
            </tr>
            <tr>
                <th>自我介绍</th>
                <td colspan="7">${freshman.introduction}</td>
            </tr>
            <tr>
                <th>加入工作室的理由</th>
                <td colspan="7" >${freshman.reason}</td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>
