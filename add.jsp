<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加项目</title>
    <link type="text/css" rel="stylesheet" href="facilityS.css">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
</head>
<body>
<div class="container">
<div style="height:50px;"></div>
<a href="GetFacilitiesServlet"><img src="src/quit.png" width="64" height="64" class="quit"></a>
	<div class="textstyle">
	<div class="txt"><span>添加设施</span></div>
	<form action="AddFacilitiesServlet" method="post">    	
		建　　筑<select name="build" size="1">
          <option>图书馆</option>
          <option>医务室</option>
          <option>操场</option>
          <option>教学楼</option>
          <option>学生澡堂</option>
          <option>学生食堂</option>
          <option>学生超市</option>
        </select><br>  
                     编　　号<input type="" name="FNo" value=""><br> 	
		设　　施<input type="text" name="facility" value=""><br>   	
		型　　号<input type="text" name="model" value=""><br>   	
		价　　格<input type="text" name="price" value=""><br>
		数　　量<input type="text" name="cont" value=""><br>
    	购入时间<input type="text" name="date" value=""><br>
    	维护时间<input type="text" name="maintenance" value=""><br>
    	设施介绍<input class="text" type="text" name="introduce" value=""><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<div class="txt"><input type="submit" value="    添    加    ">
    	<input type="reset" value="    重    置    "></div>
	</form>
	</div>
</div>
</body>
</html>
