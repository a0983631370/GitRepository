$(document).ready(function(){
    $('.foot').hover(
    //滑鼠移入
    function(){
    $(this).addClass("animate__animated animate__rubberBand") }
    ,
    //滑鼠移出
    function(){
    $(this).removeClass("animate__animated animate__rubberBand")}
    );
});

$(document).ready(function(){
    $('.headertex').hover(
    //滑鼠移入
    function(){
    $(this).addClass("animate__animated animate__heartBeat") }
    ,
    //滑鼠移出
    function(){
    $(this).removeClass("animate__animated animate__heartBeat")}
    );
});