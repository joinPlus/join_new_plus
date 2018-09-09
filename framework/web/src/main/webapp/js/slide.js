//公共部分
$(function(){
	//设置标题栏样式
	$("#user ul li:first-child").css("width","120px");
	$("#user ul li:first-child a").css("width","120px");
	$("#user ul li:last-child").css("width","60px");
	$("#user ul li:last-child a").css("width","60px");
	//头像的鼠标hover事件
	$("#user ul li:first-child a").hover(function(){
		$("#head_img a img").css("border","1px solid white");
	},function(){
		$("#head_img a img").css("border","1px solid rgb(35,38,46)");
	});
	//“注销”点击提示
	$("#user ul li:last-child a").click(function(){
		alert("已注销账号");
	})

	//设置侧栏样式
	$("#sidebar ul li:first").css({
		"height":"35px",
		"background-color":"rgb(74,80,100)",
	});
	$("#sidebar ul li:gt(0) a").css({
		"width":"200px",
		"height":"45px",
		"line-height":"45px",
		"color":"rgb(189,190,193)"
	}).hover(function(){
		$(this).css({
			"color":"white",
			"background-color":"rgb(78,84,101)"
		});
	},function(){
		$(this).css({
			"color":"rgb(189,190,193)",
			"background-color":"rgb(57,61,73)"
		});
	});
})
//轮播图管理部分
$(function(){
	$("#submit").click(function(){  
//		$("table").append()
//		return false;
	})
	$(".delete").mouseenter(function(){           //删除的图标的变化
		$(this).css({
			"opacity":"1",
		})
	})
	$(".delete").mouseleave(function(){
		$(this).css({
			"opacity":"0.5",
		})
	})
	$(".delete").mousemove(function(){
		$(this).css({
			"opacity":"1",
		})
	})
//	$(".delete").click(function(){
//		$(this).parent().parent().remove()
//	})
	$("#path").click(function(){                 //把浏览和文本框改变为file
		$("#file").click()
	})
	$("#view").click(function(){
		$("#file").click()
		return false;
	})
	$("#path").change(function(){
		var path=$("#file").val()
		$(this).val(path)
	})
})
