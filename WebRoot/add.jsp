<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加音乐</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/style1.css" rel="stylesheet" type="text/css">
	<link rel="shortcut icon" href="<%=basePath %>images/logo.png">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
<body>
<div id="box_absolute7">
<div>
  <c:choose>
		       <c:when test="${user.username ==null}">
		         <a href="login.jsp">登录</a>
		         <a href="reg.jsp">注册</a>
		       </c:when>
		       <c:otherwise>
		         <c:out value="${user.username}"></c:out>欢迎您!
		       </c:otherwise>
  </c:choose>
  </div>
<header>
<h1>添加音乐</h1>
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
   <s:form action="song/song_addSong" enctype="multipart/form-data" method="post">
   <p><label>歌曲名称</label> <input type="text" name="song.name" class="form-control input-sm" required></p>
   <p><label>演唱歌手</label> <input type="text" name="song.singer.singername" class="form-control input-sm" required></p>
   <p><label>所属专辑</label> <input type="text" name="song.album.albumname" class="form-control input-sm" ></p>
   <p><label>所属流派</label> <input type="text" name="song.genre.genrename" class="form-control input-sm" ></p>
   <p><label>歌曲路径</label> <input type="file" name="songpath" class="form-control input-sm" ></p>
   <p><button type="submit">提交</button></p>
   </s:form>
   </div>
  </body>
</html>
