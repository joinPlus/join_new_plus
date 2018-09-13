//公告管理
$(function(){
    $(".addPic,.deletePic,.updatePic").mouseenter(function(){           //小图标的变化
        $(this).css({
            "opacity":"1",
        })
    })
    $(".addPic,.deletePic,.updatePic").mouseleave(function(){
        $(this).css({
            "opacity":"0.5",
        })
    })
    $(".addPic,.deletePic,.updatePic").mousemove(function(){
        $(this).css({
            "opacity":"1",
        })
    })

})
