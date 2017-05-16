<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="<%=basePath %>images/logo.png">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrapValidator.css">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
	<link href="css/style1.css"rel="stylesheet"type="text/css">
	
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <div id="box_absolute7">
<header>
<h1>注册</h1>
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
    <main class="bg">
         <s:form action="user/user_reg" id="defaultForm" method="post" cssClass="login" validate="true">
	      <h3>注&nbsp;&nbsp;&nbsp;&nbsp;册</h3>
	      <div class="form-group">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" name="user.username" class="form-control" placeholder="请输入用户名">
              </div>
             
              <!-- <s:fielderror fieldName="user.username" cssClass="fielderror"/> -->
             
               <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <input type="password" name="user.password" class="form-control" placeholder="请输入密码">
              </div>
             </div>
              <!-- <s:fielderror fieldName="user.password" cssClass="fielderror"/>   -->
          
	      <button type="submit" class="btn btn-success btn-login">注册</button>
	      
	      
	    
    </s:form>
   
	</main>

  
    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    <!-- -------以下这个css是bootstrap Validator插件的css--------- -->
    <script src="<%=basePath%>js/bootstrapValidator.js"></script>
  <script type="text/javascript">
  $(document).ready(function() {
	$('#defaultForm')
	    .bootstrapValidator({
	    	message:'请输入内容',
	    	feedbackIcons:{
	    		valid:'fa fa-check',
	    		invalid:'fa fa-remove',
	    		validating:'fa fa-refresh'
	    	},
	    	fields:{
	    		'user.username':{
	    			message:'用户名无效',
	    			validators:{
	    				notEmpty:{
	    					message:'用户名不得为空'
	    				},
	    				stringLength:{
	    					min:5,
	    					max:20,
	    					message:'用户名必须在5到20个字符之间'
	    				},
	    				regexp:{
	    					regexp:/^[a-zA-Z0-9_\.]+$/,
	    					message:'用户名只能包含字母、数字、点、下划线'
	    				}
	    			}
	    		},
	    		'user.password':{
	    			validators:{
	    				notEmpty:{
	    					message:'密码不得为空'
	    			},
	    			different:{
	    				field:'user.username',
	    				message:'密码不能与用户名相同'
	    				},
	    			}
	    		},
	    	}
	    })
})
 </script> 
 </body>
</html>
