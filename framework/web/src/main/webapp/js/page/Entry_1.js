// JavaScript Document
$(function(){
//	点击“开始报名”弹出表格
//	点击“开始报名”弹出表格
//	点击“开始报名”弹出表格
//	点击“开始报名”弹出表格
//	点击“开始报名”弹出表格
	$("#entry").click(function(){
		$("form").slideToggle(600);
		if($(this).text()=="开始报名"){
			$(this).text("保存并收起");
		}else if($(this).text()=="保存并收起"){
			$(this).text("继续填写");
		}else if($(this).text()=="继续填写"){
			$(this).text("保存并收起");
		}
	});
//上传图片预览功能
//上传图片预览功能
//上传图片预览功能
//上传图片预览功能
//上传图片预览功能
$("#file").change(function(){  
    var objUrl = getObjectURL(this.files[0]) ;    
    if (objUrl) {  
        $("#img").attr("src", objUrl) ;  
    }  
}) ;  
function getObjectURL(file) {  
    var url = null ;   
    if (window.createObjectURL!=undefined) { // basic  
        url = window.createObjectURL(file) ;  
    } else if (window.URL!=undefined) { // mozilla(firefox)  
        url = window.URL.createObjectURL(file) ;  
    } else if (window.webkitURL!=undefined) { // webkit or chrome  
        url = window.webkitURL.createObjectURL(file) ;  
    }  
    return url ;  
} 
//提醒表单必填项
//提醒表单必填项
//提醒表单必填项
//提醒表单必填项
//提醒表单必填项
	//姓名
	$("#name").blur(function(){
		if($(this).val()==""){
			$(this).parent().prev().css({
				"color":"red"
			});
			$(this).attr({
				"placeholder":"请填写内容"
			});
		}
		else{
			$(this).parent().prev().css({
				"color":"#000000"
			});
		}
	});
	//学号
	$("#number").blur(function(){
		if($(this).val()==""){
			$(this).parent().prev().css({
				"color":"red"
			});
			$(this).attr({
				"placeholder":"请填写内容"
			});
		}else{
			$(this).parent().prev().css({
				"color":"#000000"
			});
		}
	});
	//照片
	//性别
	//民族
	//排名
	//生源地
	//专业
	//手机
	//QQ
	//服从调剂
	//审核状态
	//第一志愿
	//第二志愿
	//自我介绍
	//报名理由
//提交成功提示框
//提交成功提示框
//提交成功提示框
//提交成功提示框
//提交成功提示框
//	$("input:submit").click(function(){
//		alert("提交成功,欢迎您"+$("#name").val());
//	})
})