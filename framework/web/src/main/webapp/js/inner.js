$(function(){
    var finish=$(".project_child tr td:nth-child(4)")
    var finish_text=finish.text()
    if (finish_text=="已完成") {
        finish.css("color","lightgrey")
    } else{
        finish.css("color","red")
    }
})
//---------------------------------------------------------ppt-----------------------------------------------
$(function(){
    //#browse被点击，触发#file按钮点击
    $("#browse").click(function(){
        $("#file").click();
    });
    // 文本框获得焦点，触发#file按钮点击
    $("#address").click(function(){
        $("#file").click();
    })
    //将文件路径显示到文本框中
    $("#file").change(function(){			//当#file<input>框的值发生改变(开始输入文件路径)时
        var $address = $("#file").val();	//获取#file的value属性值
        $("#address").val($address);		//将获取到的属性值显示在文本框中(显示路径)
    });
});
//设置表格样式
$(function(){
    $("#inside_table tr td:first-child").css({
        "width":"60px",
        "text-align":"center"
    });
    $("#inside_table tr td:nth-child(2)").css("width","400px");
    $("#inside_table tr td:last-child").css({
        "width":"100px",
        "text-align":"center"
    });
})

//---------------------------------------------------------日历--------------------------------------------------------
$(function(){
    var myDate=new Date()
    var year=myDate.getFullYear()    //获取当前年（4）
    var month=myDate.getMonth()+1      //获取当前月（0-11,0表示一月），+1方便使用
//  var month=11
    var day=myDate.getDate()       //获取当前日（1-31）
//	var day=19
//	var week_day=myDate.getDay()     //0-6 星期几，0代表周日
//	var week_day=5
    $(".calendar span").html(year+"/"+month+"/"+day)
    var num                                                 //判断现在的月份该有多少天
    if (month==1||month==3||month==5||month==7||month==8||month==10||month==12){
        num=31
    }else if (month==4||month==6||month==9||month==11){
        num=30
    }else if(month==2){
        if (year%4==0&&(year%100!=0||year%400==0)) {
            num=29
        } else{
            num=28
        }
    }
//	var i                                //用于判断每月的一号是周几,i表示一号是周几(0-6)
//	var j=day%7                          //注意存在溢出,负数
//	var k=week_day-j
//		if (j==1) {
//			i=week_day                                //j=1证明今天是周几一号就是周几
//		}else {
//			if (k<0) {
//				i=8+k
//			}else{
//				i=k+1
//			}
//		}
    var month_first=new Date(year,month-1,1)
    var i=month_first.getDay()-1
    $(".calendar td:gt("+i+"):lt("+num+")").text(function(n){
        return n+1;
    })
//	if (i==1) {
    var day_i=day+i
    $(".calendar td:eq("+day_i+")").css({
        "background-color":"lightblue",
    })
//	}
//else{
//		var day_i=day+i
//		$(".calendar td:eq("+day_i+")").css({
//			"background-color":"lightblue",
//		})
//	}
    var x=0
    var y=0
    $(".calendar td:gt("+i+"):lt("+num+")").mouseenter(function(e){
        this.myTitle=this.title
        this.title=""
        var tooltip="<div class='tooltip'>"+this.myTitle+"</div>"
        $(".calendar").append(tooltip)
        $(".tooltip").css({
            "width":"100px",
            "height":"50px",
            "border-radius":"50px",
            "background-color":"lightblue",
            "top":(e.clientY+y)+"px",
            "left":(e.clientX+x)+"px",
            "text-align":"center",
            "line-height":"50px",
        }).show("fast")
        if (this.myTitle=="") {
            $(".tooltip").remove()
        }
    }).mouseleave(function(){
        this.title=this.myTitle;
        $(".tooltip").remove()
    }).mousemove(function(e){
        $(".tooltip").css({
            "top":(e.clientY+y)+"px",
            "left":(e.clientX+x)+"px",
        })
    })
})
//-----------------------------------------------------你问我答部分-------------------------------------------
$(function(){
    $(".cancel_question").click(function(){
        $("#tx_question_one").val("");
        $(".tx_question_two").val("");
    });
});
//-------------------------------------------------项目部分的弹出部分---------------------------------------------
$(function(){
//-----------------------------------------这是项目增加部分---------------------------------------------------------
    $("#add_btn").click(function(){                    //点击事件，展现出添加表单
        $(".addcontent").show()
        $(".addcontent").css({
            display:"inline-block",
        })
        $(".addcontent").addClass("show")
    })
    $("#addsubmit").click(function(){                  //点击事件，让增加表单hide
        $(".addcontent").hide()
        $(".addcontent").removeClass("show")
        $("#projectpic").removeClass("logchange")
    })
    $(".addcontent table tr button").click(function(){
        $(".addcontent").hide()
        $("#projectpic").removeClass("logchange")
    })
    $("#add_btn").click(function(){
        $("#projectpic").addClass("logchange")
    })
//---------------------------------------------------这是项目修改部分-------------------------------------------------------
    $("#update_a").click(function(){                    //点击事件，展现出添加表单
        $(".updatecontent").show()
        $(".updatecontent").css({
            display:"inline-block",
        })
        $(".updatecontent").addClass("show")
        var hide_input_value=$(".project_child input").val()
        $("#hide_input").val(hide_input_value)
    })
    $("#addsubmit").click(function(){                  //点击事件，让增加表单hide
        $(".addcontent").hide()
        $("#projectpic").removeClass("logchange")
    })
    $(".updatecontent table tr button").click(function(){
        $(".updatecontent").hide()
        $("#projectpic").removeClass("logchange")
    })
    $("#update_a").click(function(){
        $("#projectpic").addClass("logchange")
    })
//判断表单内容是否为空
    $("form input").blur(function(){
        if ($(this).is(".pro_name")) {                     //判断名称是否为空
            if ($(this).val()=="") {
                var errorMsg="未填写！"
                $(".req_name").text(errorMsg)
                $(".req_name").css({
                    color:"red",
                })
            }else{
                var Msg="已填写"
                $(".req_name").text(Msg)
                $(".req_name").css({
                    color:"green",
                })
            }
        }
        if ($(this).is(".pro_start")) {                     //判断开始时间是否为空
            if ($(this).val()=="") {
                var errorMsg="未填写！"
                $(".req_start").text(errorMsg)
                $(".req_start").css({
                    color:"red",
                })
            }else{
                var Msg="已填写"
                $(".req_start").text(Msg)
                $(".req_start").css({
                    color:"green",
                })
            }
        }
        if ($(this).is(".pro_finish")) {                     //判断结束时间是否为空
            if ($(this).val()=="") {
                var errorMsg="未填写！"
                $(".req_finish").text(errorMsg)
                $(".req_finish").css({
                    color:"red",
                })
            }else{
                var Msg="已填写"
                $(".req_finish").text(Msg)
                $(".req_finish").css({
                    color:"green",
                })
            }
        }
    }).keyup(function(){
        $(this).triggerHandler("blur")
    })
    $(".pro_content").blur(function(){                  //判断内容是否为空
        if ($(this).val()=="") {
            var errorMsg="未填写！"
            $(".req_content").text(errorMsg)
            $(".req_content").css({
                color:"red",
            })
        }else{
            var Msg="已填写"
            $(".req_content").text(Msg)
            $(".req_content").css({
                color:"green",
            })
        }
    }).keyup(function(){
        $(this).triggerHandler("blur")
    })
    $(".addcontent #addsubmit").click(function(){
        var yes_no=$(".addcontent table tr td:nth-child(3)").text()
        if (yes_no=="") {                      //return false
            alert("信息未完善，上传失败,请重新操作！")
            return false;
        }
    })
    $(".updatecontent #addsubmit").click(function(){
        var yes_no=$(".updatecontent table tr td:nth-child(3)").text()
        if (yes_no=="") {                      //return false
            alert("信息未完善，上传失败,请重新操作！")
            return false;
        }
    })
    // var hide_input_value=$(".project_child input").val
    // $("#hide_input").val(hide_input_value)
})
