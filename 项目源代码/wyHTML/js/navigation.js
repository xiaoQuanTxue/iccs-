var userid = sessionStorage.getItem("userid");
// alert(userid);
if (userid != null) {
    $("#logging").remove();
    $("#back-manage").remove();
    $.ajax({
        url: "http://localhost:8080/user/getname",
        // data: "id=" + $.cookie('userid'),
        data: bb(),
        type: "post",
        // datatype:"json",
        success: function(username) {
            // alert("后台返回用户名为" + username);
            //删掉了style="color: blue;"
            getUserIcon();
            var li = '<a href="#" >' + username + '</a>';
            $("li[class='aaa']").append(li);
        }
    });


}

function getUserIcon() {
    $.ajax({
        url: "http://localhost:8080/user/getTouXiangById",
        data: bb(),
        success: function(pic) {

            var li = '';
            if (pic == "" || pic == null) {
                li += '<img id="a"  src="images/默认头像.webp" style="width: 40px;height: 40px;border-radius: 20px;">';

            } else {
                li += '<img id="a" style="width: 40px;height: 40px;border-radius: 20px;" src="' + pic + '">';

            }
            $("li[id='touxiang']").append(li);
        }
    });
}

function bb() {
    var v = "id=" + sessionStorage.getItem("userid");
    console.log(v);
    return v;
}
$(document).on("click", "#touxiang", function() {
    $("#tab").toggle();
});
//<!-- 注销 -->

$("#zhuxiao").click(function() {

    sessionStorage.removeItem("userid");
    window.location.href = "login.html";

});