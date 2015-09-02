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

      	
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">寻它网</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.jsp">首页 <span
								class="sr-only">(current)</span>
						</a>
						</li>

						<li><a href="#">关于</a>
						</li>

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">失物招领 <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">

								<li><a href="#">action</a>
								</li>

								<li role="separator" class="divider"></li>
								<li><a href="#">Separated</a>
								</li>
								
							</ul>
						<li><a href="#">社区</a></li>
						
						</li>

					</ul>
					<ul id="header-me" class="nav navbar-nav navbar-right ng-scope"
						ng-controller="user_ctrl">
						<li class="divider-vertical hidden-xs"></li>
						<li><a class="mr_15" href="login.jsp">登录</a></li>
						<li><a href="signIn.jsp">注册</a></li>
						


					</ul>

				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
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
                      <input class="form-control ng-pristine ng-invalid-required" type="text" name="login_name" placeholder="请输入用户名"></input>

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
                  <button class="btn btn-success btn-lg btn-block" type="submit">登录</button>

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