$(function(){
    $("#simgle_photo tr td:first-child").css({
        "width":"150px",
        "text-align":"center"
    });
    $("#simgle_photo tr td:last-child").css({
        "width":"400px",
        "text-align":"center"
    })

    //图片标题更改
    $("#sure_change").click(function(){
        $("#new_title").focus()
    })
    //图片浏览
    $("#change_through").click(function(){
        $("#change_file").click();
    })
    $("#photo_address").focus(function(){
        $("#change_file").click();
    })
    $("#change_file").change(function(){
        $("#photo_address").val($(this).val());
    })

})