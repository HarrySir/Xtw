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
						<li><a href="funcmain.jsp">社区</a>
						</li>
						</li>

					</ul>
					<ul id="header-me" class="nav navbar-nav navbar-right ng-scope"
						ng-controller="user_ctrl">
						<li class="divider-vertical hidden-xs"></li>
						<li><a class="mr_15" href="login.jsp">登录</a>
						</li>
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
          <div id="index-wrap">
            <div class="index-banner">
                <div class="index-banner-wrap">
                  <div class="index-banner-inner">
                      <h1>让失物招领更容易</h1>
                      <p>一个免费、实用的失物招领平台</p>
                  <div class="index-banner-action">
                    <a class="btn btn-success btn-lg" href="signIn.jsp">立即注册</a>
                  </div>
                        
                    


                </div>
                  
                      

            </div>
            
         <div class="index-body">
           <ul class="index-feature">
              <li><img alt="提高效率" src="https://dn-wtbox.qbox.me/img/index/i1.png?ver=3.3.58"></img>
                  <br></br>
                  <h4>提高效率</h4>
                  灵活的信息匹配算法
                  <br/>
                  让丢失的物品轻易找回
              </li>
              <li><img alt="无缝沟通" src="https://dn-wtbox.qbox.me/img/index/i2.png?ver=3.3.58"></img>
                  <br></br>
                  <h4>无缝沟通</h4>
                  简单好用的在线信息发布，无处不在的
                  <br/>
                  评论让用户无缝沟通
                  </li>
              <li><img alt="实时刷新" src="https://dn-wtbox.qbox.me/img/index/i3.png?ver=3.3.58"></img>
                  <br></br>
                  <h4>实时刷新</h4>
                  无须刷新页面，所有消息<br/>
                  和更新即时达到
                  <br/>
                  </li>
              <li></li>


           </ul>
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

