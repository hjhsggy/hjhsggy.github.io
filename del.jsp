<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除成功</title>
    <link type="text/css" rel="stylesheet" href="facilityS.css">
    <meta http-equiv="Refresh" content="5;url=GetFacilitiesServlet">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
</head>
<body onload="run()">
<script type="text/javascript">
	var x = 5;

    function run(){
        var span = document.getElementById("spanId");
        span.innerHTML = x;
        x--;
        window.setTimeout("run()", 1000);
        }
</script>
<div class="container">
<div style="height:50px;"></div>
    <div class="textstyle">
    <div class="txt"><span>删除成功</span></div>
    <div class="txt"><span id="spanId">5</span>  秒后自动跳转回原界面</div>
    <p></p>
    <a href="GetFacilitiesServlet"><div class="txt">点击此处立即跳转至管理员主页</a></div>
    </form>
    </div>
</div>
</body>
</html>
