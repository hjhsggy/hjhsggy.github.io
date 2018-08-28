<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
    <title>修改设施</title>
    <link type="text/css" rel="stylesheet" href="facilityS.css">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
</head>
<body>
<div class="container">
<div style="height:50px;"></div>
<a href="GetFacilitiesServlet"><img src="src/quit.png" width="64" height="64" class="quit"></a>
    <div class="textstyle">
    <div class="txt"><span>修改设施</span></div>
    <form action="ModFacilitiesServlet" method="post">
        编　　号<input type="text" name="FNo" value="${facility.FNo}" disabled> <br>
        建　　筑<input type="text" name="build" value="${facility.build}" disabled><br>
        设　　施<input type="text" name="facility" value="${facility.facility}"><br>
        型　　号<input type="text" name="model" value="${facility.model}"><br>
        价　　格<input type="text" name="price" value="${facility.price}"><br>
        数　　量<input type="text" name="cont" value="${facility.cont}"><br>
        购入时间<input type="text" name="date" value="${facility.date}"><br>
        维护时间<input type="text" name="maintenance" value="${facility.maintenance}"><br>
        说　　明<input type="text" name="introduce" value="${facility.introduce}"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<div class="txt"><input type="submit" value="    添    加    ">
    	<input type="reset" value="    重    置    "></div>
    </form>
    </div>
</div>
</body>
</html>
