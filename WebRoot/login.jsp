<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>请先登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/style1.css"rel="stylesheet"type="text/css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <div id="box_absolute7">
<header>
<h1>登录</h1>
<nav>
<ul>
<li><a href="index.jsp">首页</a></li>
<li><a href="song/song_showSongByGenre?song.genre.genreid=1">流行乐</a></li>
<li><a href="song/song_showSongByGenre?song.genre.genreid=2">乡村乐</a></li>
<li><a href="song/song_showSongByGenre?song.genre.genreid=3">民谣乐</a></li>
<li><a href="song/song_showSongByGenre?song.genre.genreid=4">蓝调乐</a></li>
<li><a href="song/song_showSongByGenre?song.genre.genreid=5">摇滚乐</a></li>
</ul>
</nav>
</header>
   <s:form action="user/user_login" method="post">
      <s:property value="errMessage"></s:property>
      <s:textfield name="user.username" label="用户名"></s:textfield>
      <s:password name="user.password" label="密码"></s:password>
      <s:submit value="登录"></s:submit>
    </s:form>
    <br>
    <p>还没有账号？<a href="reg.jsp">注册一个！</a></p>
  </div>
  </body>
</html>
