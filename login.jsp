<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>管理员登陆</title>
<link href="login.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
</head>


<body>
<div class="login">
  <div class="border">
    <div class="image">
      <img src="src/denglu.png" width="400" height="100" /> 
    </div>
    <div class="log_in">
      <form action="login" method="post">
      账号　<input type="text" class="un" name="username" maxlength=20 value="${username}"/>
      <br />
      密码　<input type="password" class="un" name="password" maxlength=20 value="${password}"/>
      <div class="title">${error}
      </div>
      <input name="" type="submit" class="sure" value=" "/>
      <div class="admin">
            总管理员<input type="radio" name="administrator" value="a" id="administrator_0" checked/>
            <br />
            分管理员<input type="radio" name="administrator" value="b" id="administrator_1" />
      </div>　
      </form>　
    </div>
  </div>
</div>
</body>
</html>