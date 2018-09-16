<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/9/5
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<%--<form action="${website}entry/update">--%>
    <%--<input type="text" name="id">--%>
    <%--<input type="submit">--%>
<%--</form>--%>

<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../../css/page/Entry'css.css">
    <link rel="stylesheet" type="text/css" href="../../css/public.css">
    <script type="text/javascript" src="../../js/common/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../../js/page/Entry_1.js"></script>
    <script type="text/javascript" src="../../js/public.js"></script>
    <title>欢迎报名卓音工作室</title>
</head>

<body>
<div class="header">
    <div class="logo">
        <img src="../../img/1.png">
        <img src="../../img/2.png">
    </div>
    <div class="button">
        <div class="button_inner" id="btn1">
            <button id="network" type="button">内网</button>
        </div>
        <div class="button_inner">
            <div class="search_bar_inner" id="input_block">
                <input id="key" type="text" placeholder="请输入要搜索的内容">
            </div>
            <div class="search_bar_inner" id="btn2">
                <input id="search" type="submit" name="submit" value="提交" />
            </div>
        </div>
    </div>
</div>
<div class="nav">
    <ul>
        <li id="home_page">
            <a class="link" href="">首页</a>
        </li>
        <li class="mainmenu">
            <a class="link" href="../introduction.html">卓音简介</a>
        </li>
        <li class="mainmenu">
            <a class="link" href="">部门介绍</a>
            <dl>
                <dd> <a href="department_product.html">产品部</a></dd>
                <dd> <a href="department_front.html">前端部</a></dd>
                <dd> <a href="department_back.html">后端部</a></dd>
            </dl>
        </li>
        <li class="mainmenu">
            <a class="link" href="">卓音成就</a>
            <dl>
                <dd> <a href="http://www.dsjyw.net/">东北高师就业联盟网</a></dd>
                <dd> <a href="http://careers.nenu.edu.cn/">东师就业指导服务中心</a></dd>
            </dl>
        </li>
        <li class="mainmenu">
            <a class="link" href="">卓音纳新</a>
            <dl>
                <dd> <a href="">报名</a></dd>
            </dl>
        </li>
    </ul>
</div>
<div id="mainBox">
    <div id="shadowBox"></div><!--上方的阴影-->
    <h3>了解卓音以后，是否想加入我们呢？</h3>
    <span>&nbsp;&nbsp;无论你是对技术抱有热爱，还是想要提升专业技能，亦或是想要锻炼自身综合实力，在这里你统统可以学习到，技术小白没关系，只要你努力学习，对工作充满热情，卓音大门为你敞开，带你畅游技术与实践的海洋！</span>
    <div class="flowLeft">报名流程</div>
    <p>1、认真阅读卓音纳新宣传，确定报名意愿。</p>
    <p>2、参加卓音纳新宣传。</p>
    <p>3、下载卓音报名表并认真填写，需将电子版上传并打印两份纸质版。</p>
    <p>4、等待面试通知，面试时可带个人产品（非必须）。</p>
    <div class="flowRight" id="entry">开始报名</div>
    <form action="${website}entry/addFreshman" method="post" enctype="multipart/form-data">
        id为${myId}
        <table>
            <tr>
                <td class="miaomiaomiao"></td>
                <td class="miaomiaomiao"></td>
                <td class="miaomiaomiao"></td>
                <td class="miaomiaomiao"></td>
                <td class="miaomiaomiao"></td>
                <td class="miaomiaomiao"></td>
                <td class="miaomiaomiao"></td>
                <td class="miaomiaomiao"></td>
            </tr>
            <tr>
                <td>姓名</td>
                <td colspan="2" width="25%">
                    <input type="text" name="name" id="name" class="fullinput">
                </td>
                <td>学号</td>
                <td colspan="2" width="25%">
                    <input type="text" name="number" id="number" class="fullinput">
                </td>
                <td colspan="2" rowspan="5" width="25%">
                    <img src="" id="img" width="100%">
                    <input type="file" name="uploadFile" id="file" multiple="multiple">
                </td>
            </tr>
            <tr>
                <td>性别</td>
                <td>
                    <input type="radio" name="sex" value="男" id="sex">男<input type="radio" name="sex" value="女" id="sex">女
                </td>
                <td>民族</td>
                <td><select name="nation" id="nation">
                    <option value="汉族">汉族</option><option value="蒙古族">蒙古族</option><option value="回族">回族</option><option value="藏族">藏族</option><option value="维吾尔族">维吾尔族</option><option value="苗族">苗族</option><option value="彝族">彝族</option><option value="壮族">壮族</option><option value="布依族">布依族</option><option value="朝鲜族">朝鲜族</option><option value="满族">满族</option><option value="侗族">侗族</option><option value="瑶族">瑶族</option><option value="白族">白族</option><option value="土家族">土家族</option><option value="哈尼族">哈尼族</option><option value="哈萨克族">哈萨克族</option><option value="傣族">傣族</option><option value="黎族">黎族</option><option value="傈僳族">傈僳族</option><option value="佤族">佤族</option><option value="畲族">畲族</option><option value="高山族">高山族</option><option value="拉祜族">拉祜族</option><option value="水族">水族</option><option value="东乡族">东乡族</option><option value="纳西族">纳西族</option><option value="景颇族">景颇族</option><option value="柯尔克孜族">柯尔克孜族</option><option value="土族">土族</option><option value="达斡尔族">达斡尔族</option><option value="仫佬族">仫佬族</option><option value="羌族">羌族</option><option value="布朗族">布朗族</option><option value="撒拉族">撒拉族</option><option value="毛南族">毛南族</option><option value="仡佬族">仡佬族</option><option value="锡伯族">锡伯族</option><option value="阿昌族">阿昌族</option><option value="普米族">普米族</option><option value="塔吉克族">塔吉克族</option><option value="怒族">怒族</option><option value="乌孜别克族">乌孜别克族</option><option value="俄罗斯族">俄罗斯族</option><option value="鄂温克族">鄂温克族</option><option value="德昂族">德昂族</option><option value="保安族">保安族</option><option value="裕固族">裕固族</option><option value="京族">京族</option><option value="塔塔尔族">塔塔尔族</option><option value="独龙族">独龙族</option><option value="鄂伦春族">鄂伦春族</option><option value="赫哲族">赫哲族</option><option value="门巴族">门巴族</option><option value="珞巴族">珞巴族</option><option value="基诺族">基诺族</option>
                </select></td>
                <td>排名</td>
                <td><input type="number" name="rank" id="rank" class="mininput">/<input type="number" name="rankAll" id="rankAll" class="mininput"></td>
            </tr>
            <tr>
                <td>生源地</td>
                <td colspan="2">
                    <select name="nativePlace" id="province" class="smallinput">
                        <option value="省份" selected="selected">省份</option>
                    </select>
                    <%--<select name="nativePlace" id="city" class="smallinput">--%>
                        <%--<option value="城市" selected="selected">市县</option>--%>
                    <%--</select>--%>
                </td>
                <td>专业</td>
                <td colspan="2">
                    <input type="text" name="major" id="major" class="fullinput">
                </td>
            </tr>
            <tr>
                <td>手机</td>
                <td colspan="2">
                    <input type="tel" name="phone" id="phone" class="fullinput">
                </td>
                <td>QQ</td>
                <td colspan="2">
                    <input type="text" name="qq" id="qq" class="fullinput">
                </td>
            </tr>
            <tr>
                <td>服从调剂</td>
                <td colspan="2">
                    <input type="radio" name="yon" value=1 id="yon">服从<input type="radio" name="yon" value=0 id="yon">不服从
                </td>
                <td>审核状态</td>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td>第一志愿</td>
                <td colspan="3">
                    <input type="radio" name="volunteer1" value="前端" id="volunteer1">前端<input type="radio" name="volunteer1" value="后端" id="volunteer1">后端<input type="radio" name="volunteer1" value="产品" id="volunteer1">产品
                </td>
                <td>第二志愿</td>
                <td colspan="3">
                    <input type="radio" name="volunteer2" value="前端" id="volunteer1">前端<input type="radio" name="volunteer2" value="后端" id="volunteer1">后端<input type="radio" name="volunteer2" value="产品" id="volunteer1">产品
                </td>
            </tr>
            <tr>
                <td>自我介绍</td>
                <td colspan="7">
						<textarea name="introduction" id="introduction" class="maxinput">
						</textarea>
                </td>
            </tr>
            <tr>
                <td>加入理由</td>
                <td colspan="7">
						<textarea name="reason" id="reason" class="maxinput">
						</textarea>
                </td>
            </tr>

        </table>
        <input type="submit" id="submit">
    </form>
</div>
<div class="footer_block">
    <div class="footer" id="footer_logo">
        <img src="../../img/1.png">
    </div>
    <div class="footer footer_middle" id="footer_message">
        <p><span>版权所有©东北师范大学卓音工作室</span></p>
        <p><span>邮箱：webmaster@nenu.edu.cn</span></p>
        <p><span>地址：吉林省长春市南关区人民大街5268号</span></p>
    </div>
    <div class="footer" id="footer_wechat">
        <img src="../../img/14.png" >
        <div class="note">
            <p><span>&nbsp;&nbsp;&nbsp;卓音官方微信</span> </p>
        </div>
    </div>
</div>
</body>
<!--		以下是省市联动的js部分-->
<script type="text/javascript">function showChild(r,i,c){var e=r.value,A=c.length;i.length=1;for(var n=0;A>n;n++)if(e==c[n][0])for(var o=1;o<c[n].length;o++){var t=document.createElement("option");t.value=t.text=c[n][o],i.options.add(t)}}var province=document.getElementById("province"),city=document.getElementById("city"),provinceArr=[];provinceArr[0]=["北京市"],provinceArr[1]=["天津市"],provinceArr[2]=["上海市"],provinceArr[3]=["重庆市"],provinceArr[4]=["河北省"],provinceArr[5]=["河南省"],provinceArr[6]=["云南省"],provinceArr[7]=["辽宁省"],provinceArr[8]=["黑龙江省"],provinceArr[9]=["湖南省"],provinceArr[10]=["安徽省"],provinceArr[11]=["山东省"],provinceArr[12]=["新疆维吾尔自治区"],provinceArr[13]=["江苏省"],provinceArr[14]=["浙江省"],provinceArr[15]=["江西省"],provinceArr[16]=["湖北省"],provinceArr[17]=["广西壮族"],provinceArr[18]=["甘肃省"],provinceArr[19]=["山西省"],provinceArr[20]=["内蒙古自治区"],provinceArr[21]=["陕西省"],provinceArr[22]=["吉林省"],provinceArr[23]=["福建省"],provinceArr[24]=["贵州省"],provinceArr[25]=["广东省"],provinceArr[26]=["青海省"],provinceArr[27]=["西藏"],provinceArr[28]=["四川省"],provinceArr[29]=["宁夏回族"],provinceArr[30]=["海南省"],provinceArr[31]=["台湾省"],provinceArr[32]=["香港特别行政区"],provinceArr[33]=["澳门特别行政区"];var cityArr=[];cityArr[0]=["北京市","东城区","西城区","崇文区","宣武区","朝阳区","丰台区","石景山区","海淀区","门头沟区","房山区","通州区","顺义区","昌平区","大兴 区","怀柔区","平谷区","密云县","延庆县"],cityArr[1]=["天津市","和平区","河东区","河西区","南开区","河北区","红桥区","塘沽区","汉沽区","大港区","东丽区","西青区","津南区","北辰区","武清区","宝坻区","宁河县","静海县","蓟县"],cityArr[2]=["上海市","黄浦区","卢湾区","徐汇区","长宁区","静安区","普陀区","闸北区","虹口区","杨浦区","闵行区","宝山区","嘉定区","浦东新区","金山区","松江区","青浦区","南汇区","奉贤区","崇明县"],cityArr[3]=["重庆市","万州区","涪陵区","渝中区","大渡口区","江北区","沙坪坝区","九龙坡区","南岸区","北碚区","万盛区","双桥区","渝北区","巴南区","黔江区","长寿区","江津区","合川区","永川区","南川区","綦江县","潼南县","铜梁县","大足县","荣昌县","璧山县","梁平县","城口县","丰都县","垫江县","武隆县","忠县","开县","云阳县","奉节县","巫山县","巫溪县","石柱土家族自治县","秀山土家族苗族自治县","酉阳土家族苗族自治县","彭水苗族土家族自治县"],cityArr[4]=["河北省","石家庄市","唐山市","秦皇岛市","邯郸市","邢台市","保定市","张家口市","承德市","沧州市","廊坊市","衡水市"],cityArr[5]=["河南省","郑州市","开封市","洛阳市","平顶山市","安阳市","鹤壁市","新乡市","焦作市","济源市","濮阳市","许昌市","漯河市","三门峡市","南阳市","商丘市","信阳市","周口市","驻马店市"],cityArr[6]=["云南省","昆明市"," 曲靖市","玉溪市","保山市","昭通市","丽江市","思茅市","临沧市","楚雄彝族自治州","红河哈尼族彝族自治州","文山壮族苗族自治州","西双版纳傣族自治州","大理白族自治州","德宏傣族景颇族自治州","怒江傈僳族自治州","迪庆藏族自治州"],cityArr[7]=["辽宁省","沈阳市","大连市","鞍山市","抚顺市","本溪市","丹东市","锦州市","营口市","阜新市","辽阳市","盘锦市","铁岭市","朝阳市","葫芦岛市"],cityArr[8]=["黑龙江省","哈尔滨市","齐齐哈尔市","鸡西市","鹤岗市","双鸭山市","大庆市","伊春市","佳木斯市","七台河市","牡丹江市","黑河市","绥化市","大兴安岭地区"],cityArr[9]=["湖南省","长沙市","株洲市","湘潭市","衡阳市","邵阳市","岳阳市","常德市","张家界市","益阳市","郴州市","永州市","怀化市","娄底市","湘西土家族苗族自治州"],cityArr[10]=["安徽省","合肥市","芜湖市","蚌埠市","淮南市","马鞍山市","淮北市","铜陵市","安庆市","黄山市","滁州市","阜阳市","宿州市","巢湖市","六安市","亳州市","池州","宣城市"],cityArr[11]=["山东省","济南市","青岛市","淄博市","枣庄市","东营市","烟台市","潍坊市","济宁市","泰安市","威海市","日照市","莱芜市","临沂市","德州市","聊城市","滨州市","菏泽市"],cityArr[12]=["新疆维吾尔自治区","乌鲁木齐市","克拉玛依市","吐鲁番地区","哈密地区","昌吉回族自治州 ","博尔塔拉蒙古自治州 ","巴音郭楞蒙古自治州 ","阿克苏地区","克孜勒苏柯尔克孜自治州 ","喀什地区","和田地区","伊犁哈萨克自治州","塔城地区","阿勒泰地区","石河子市","阿拉尔市","图木舒克市","五家渠市"],cityArr[13]=["江苏省","南京市","无锡市","徐州市","常州市","苏州市","南通市","连云港市","淮安市","盐城市","扬州市","镇江市","泰州市","宿迁市"],cityArr[14]=["浙江省","杭州市","宁波市","温州市","嘉兴市","湖州市","绍兴市","金华市","衢州市","舟山市","台州市","丽水市"],cityArr[15]=["江西省","南昌市","景德镇市","萍乡市","九江市","新余市","鹰潭市","赣州市","吉安市","宜春市","抚州市","上饶市"],cityArr[16]=["湖北省","武汉市","黄石市","十堰市","宜昌市","襄樊市","鄂州市","荆门市","孝感市","荆州市","黄冈市","咸宁市","随州市","恩施土家族苗族自治州","仙桃市","潜江市","天门市","神农架林区"],cityArr[17]=["广西壮族","南宁市","柳州市","桂林市","梧州市","北海市","防城港市","钦州市","贵港市","玉林市","百色市","贺州市","河池市","来宾市","崇左市"],cityArr[18]=["甘肃省","兰州市","嘉峪关市","金昌市","白银市","天水市","武威市","张掖市","平凉市","酒泉市","庆阳市","定西市","陇南市","临夏回族自治州","甘南藏族自治州"],cityArr[19]=["山西省","太原市","大同市","阳泉市","长治市","晋城市","朔州市","晋中市","运城市","忻州市","临汾市","吕梁市"],cityArr[20]=["内蒙古自治区","呼和浩特市","包头市","乌海市","赤峰市","通辽市","鄂尔多斯市","呼伦贝尔市","巴彦淖尔市","乌兰察布市","兴安盟","锡林郭勒盟","阿拉善盟"],cityArr[21]=["陕西省","西安市","铜川市","宝鸡市","咸阳市","渭南市","延安市","汉中市","榆林市","安康市","商洛市"],cityArr[22]=["吉林省","长春市","吉林市","四平市","辽源市","通化市","白山市","松原市","白城市","延边朝鲜族自治州"],cityArr[23]=["福建省","福州市","厦门市","莆田市","三明市","泉州市","漳州市","南平市","龙岩市","宁德市"],cityArr[24]=["贵州省","贵阳市","六盘水市","遵义市","安顺市","铜仁地区","黔西南布依族苗族自治州","毕节地区","黔东南苗族侗族自治州","黔南布依族苗族自治州"],cityArr[25]=["广东省","广州市","韶关市","深圳市","珠海市","汕头市","佛山市","江门市","湛江市","茂名市","肇庆市","惠州市","梅州市","汕尾市","河源市","阳江市","清远市","东莞市","中山市","潮州市","揭阳市","云浮市"],cityArr[26]=["青海省","西宁市","海东地区","海北藏族自治州","黄南藏族自治州","海南藏族自治州","果洛藏族自治州","玉树藏族自治州","海西蒙古族藏族自治州"],cityArr[27]=["西藏","拉萨市","昌都地区","山南地区","日喀则地市","那曲地区","阿里地区","林芝地区"],cityArr[28]=["四川省","成都市","自贡市","攀枝花市","泸州市","德阳市","绵阳市","广元市","遂宁市","内江市","乐山市","南充市","眉山市","宜宾市","广安市","达州市","雅安市","巴中市","资阳市","阿坝藏族羌族自治州","甘孜藏族自治州","凉山彝族自治州"],cityArr[29]=["宁夏回族","银川市","石嘴山市","吴忠市","固原市","中卫市"],cityArr[30]=["海南省","海口市","三亚市","五指山市","琼海市","儋州市","文昌市","万宁市","东方市","定安县","屯昌县","澄迈县","临高县","白沙黎族自治县","昌江黎族自治县","乐东黎族自治县","陵水黎族自治县","保亭黎族苗族自治县","琼中黎族苗族自治县"],cityArr[31]=["台湾省","台北市","高雄市","基隆市","台中市","台南市","新竹市","嘉义市"],cityArr[32]=["香港特别行政区","中西区","湾仔区","东区","南区","油尖旺区","深水埗区","九龙城区","黄大仙区","观塘区","荃湾区","葵青区","沙田区","西贡区","大埔区","北区","元朗区","屯门区","离岛区"],cityArr[33]=["澳门特别行政区","澳门"];for(var key in provinceArr){var provinceOption=document.createElement("option");provinceOption.value=provinceOption.text=provinceArr[key],province.options.add(provinceOption)}province.onchange=function(){showChild(province,city,cityArr)};</script>
</html>


