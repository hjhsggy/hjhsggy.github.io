<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<script type="text/javascript">
    function editButton(FNo){
        if(confirm("确定要修改吗？")){
            location.href = "ModFacilitiesServlet?FNo="+FNo;}}
            
    function delButton(FNo){
        if(confirm("确定要删除嘛？")){
            location.href = "DelFacilitiesServlet?FNo="+FNo;}}
</script>
<meta charset="utf-8">
<title>校园服务设施管理系统</title>
<link href="use.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
</head>

<body>
<div class="top">
  <img src="src/logo1.png" width="344" height="110" class="logo">
  <img src="src/school.png" width="500" height="60" class="name">
  <a href="index.jsp"><img src="src/quit.png" width="64" height="64" class="quit"></a>
</div>
<div class="m">
<form action="SeaFacilitiesServlet" method="post">
<input type="text" name="search" value="" >
    <input name="" type="submit" value="搜索" ></form>
    </div>
<div class="middle">
  <div class="middle_top">
  
  <div class="middle_left">
    <span>校园服务设施信息统计表</span>
    <div class="add"> <a href="AddFacilitiesServlet">添加</a></div>
    <table class="facitily">
      <tr>
        <td width="5%">编号</td>
        <td width="8%">建筑</td>
        <td width="12%">设施</td>
        <td width="10%">规格型号</td>
        <td width="5%">价格</td>
        <td width="5%">数量</td>
        <td width="10%">购入时间</td>
        <td width="10%">维护时间</td>
        <td>功能说明</td>
        <td width="11%">操作</td>
      </tr>
     <c:forEach var="facilities" items="${requestScope.lists}" varStatus="status">
            <tr <c:if test="${status.index % 2 == 1}"></c:if>>
        <td>${facilities.FNo}</td>
        <td class="td1">${facilities.build}</td>
        <td class="td1">${facilities.facility}</td>
        <td class="td1">${facilities.model}</td>
        <td class="td2">${facilities.cont}</td>
        <td class="td2">${facilities.price}</td>
        <td>${facilities.date}</td>
        <td>${facilities.maintenance}</td>
        <td class="td1">${facilities.introduce}</td>
        <td><input type="button" value="修改" style="width:38px;" onClick="editButton('${facilities.FNo}')">
            <input type="button" value="删除" style="width:38px;" onClick="delButton('${facilities.FNo}')"></td>
      </tr>
      </c:forEach>
    </table>
  </div>
  <div class="middle_middle"></div>
  <div class="middle_right">
    <span>权限管理员表</span>
    <table class="admin">
      <tr>
        <td>分管理员</td>
        <td>密码</td>
        <td>管理建筑</td>
      </tr>
      <c:forEach var="admin" items="${requestScope.lists1}" varStatus="status">
            <tr <c:if test="${status.index % 2 == 1}"></c:if>>
        <td class="td1">${admin.username}</td>
        <td class="td1">${admin.password}</td>
        <td class="td1">${admin.department}</td>
      </c:forEach>
      </tr>
    </table>
  </div>
  </div>
  <div style="clear:both"></div>
</div>
</body>
</html>
