<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>寻它失物招领网</title>

    <!-- Bootstrap -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/Xunta.index.css">
     
    
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
     
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  
    
  </head>
  <body>
        <header id="header">
            <nav id="header_outer" class="navbar navbar-inverse navbar-fixed-top navbar-default">
                <div class="navbar-header">
                      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				         
				         <span class="icon-bar"></span>
				         <span class="icon-bar"></span>
				         <span class="icon-bar"></span>
				      </button>
                    <a id="header_logo" class="navbar-brand">寻它网</a>
                </div>
			     <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="background-color: rgb(57, 57, 57); margin-top: 0px; height: 1px;">
			        <ul id="header_menu" class="nav navbar-nav">
			            <li><a href="index.jsp">首页</a></li>
			            <li><a href="">关于</a></li>
			            <li><a href="funcmain.jsp">失物招领</a></li>
			        </ul>
			        <ul id="header_me" class="nav navbar-nav navbar-right">
			            <li class="divider-vertical hidden-xs"></li>
			            <li><a class="mr_15" href="login.jsp">登录</a></li>
			            <li><a href="signIn.jsp">注册</a></li>
			        </ul>
			    </div>
		    </nav>
	
        </header>
      <div id="wrap-all">
    <div id="main" class="inner">
      <div class="other-wrap login-wrap ng-scope" data-ng-controller="user_login_ctrl">
        <div class="single-panel clearfix" data-minheight="58" style="min-height:268px;">

        <div class="single-panel-inner login-mini ng-scope" ng-if="status.code==0">
          <div class="single-panel-header">
            <h3>登录</h3>

          </div>
          <div class="single-panel-body">
            <div class="single-panel-section">
              <form class="form-horizontal" action="<c:url value='/LoginServlet'/>" method="post">
                <div class="form-group">
                   <div class="input-group">
                      <span class="input-group-addon">
                         <i class="icon-user"></i>

                      </span>
                      <input class="form-control ng-pristine ng-invalid-required" type="text" name="login_name" placeholder="请输入用户名/邮箱"></input>

                   </div>

                </div>

                <div class="form-group">
                   <div class="input-group">
                      <span class="input-group-addon">
                         <i class="icon icon-lock"></i>

                      </span>
                      <input class="form-control ng-pristine ng-invalid-required" type="password" name="login_password" placeholder="请输入密码"></input>

                   </div>

                </div>
                <div class="form-group">
                  <button class="btn btn-success btn-lg btn-block" type="button">登录</button>

                </div>
              </form>
            </div>

           </div>
           <div class="single-panel-footer">
              <div class="pull-right"><a href="#">忘记密码?</a></div>
              <div class="pull-left"><a href="signIn.jsp">立即注册</a></div>
           </div>
        </div>
        </div>
      </div>
    </div>
  </div>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../bootstrap/js/bootstrap.min.js"></script> 
  </body>
</html>