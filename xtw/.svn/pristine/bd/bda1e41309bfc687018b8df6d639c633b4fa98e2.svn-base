<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.sun.corba.se.pept.transport.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	Connection conn=null;	
	PreparedStatement pstmt=null;
	ResultSet rest=null;
	 
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1 maximum-scale=1.0 user-scalable=no">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>注册</title>

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
    
    <script type="text/javascript" src="<c:url value='/ajax-lib/ajaxutils.js'/>"></script>
    <script type="text/javascript">
	    /*页面已加载后就在下拉列表中显示所有的学校*/
		window.onload = function(){
			ajax(
				{
					method:"POST",
					url:"<c:url value='/RegisterServlet'/>",
					params:"act=loadSchool",
					type:"json",
					callback:function(data){
						//得到school下拉列表元素
						var schoolSelect = document.getElementById("school");
						//循环遍历json，创建option元素，给option元素赋值，并添加到select元素之后
						for(var i = 0; i < data.length; i++){
							var school = data[i];
	    					var schoolOption = document.createElement("option");
	    					schoolOption.value = school.schoolId;
	    					var textNode = document.createTextNode(school.schoolName);
	    					schoolOption.appendChild(textNode);
	    					schoolSelect.appendChild(schoolOption);
						}
					}
				}		
			);
	    
			
			/*当选择学校后，就加载出该学校的所有学院*/
    		var schoolSelect = document.getElementById("school");
    		schoolSelect.onchange = function(){
    			//得到college的select
    			var collegeSelect = document.getElementById("college");
    			//清空下拉列表的元素
    			var collegeOption = collegeSelect.getElementsByTagName("option");
    			for(var i = 1; i < collegeOption.length; i++){
    				//得到每个option
    				var option = collegeOption[i];
    				//通过父节点删除这个option
    				collegeSelect.removeChild(option);
    				i--;
    			}
    			//得到选择的学校
    			var school = schoolSelect.value;
    			ajax(
    				{
    					"method":"POST",
    					"url":"<c:url value='/RegisterServlet'/>",
    					"params":"act=loadCollege&schoolId=" + school,
    					"type":"json",
    					"callback":function(data){
    						var collegeSelect = document.getElementById("college");
    						for(var i = 0; i < data.length; i++){
    							var college = data[i];
    							var collegeOption = document.createElement("option");
    							collegeOption.value = college.collegeId;
    							collegeOption.innerHTML = college.collegeName;
    							collegeSelect.appendChild(collegeOption);
    						}
    					}
    					
    				}		
    			);
    		}
	    }
    	
    </script>
   
    
<script type="text/javascript">
    
    var xmlHttp;
    var flag;
    function createXMLHttp(){
    if(window.XMLHttpRequest){
    xmlHttp=new XMLHttpRequest();
    }
    else{
    xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    }

    function checkUser(userid){       //账号审核
    createXMLHttp();  
    xmlHttp.open("POST","/xtw/CheckUserServlet?userid="+userid);
 	xmlHttp.onreadystatechange = checkUseridCallback;  
    xmlHttp.send(null); // 发送请求，不设置参数  
    
    
    }
    function checkUseridCallback(){ // 账号审核回调函数  
        if (xmlHttp.readyState == 4){           // 数据返回完毕  
            if (xmlHttp.status == 200){    
                // HTTP操作正常  
                var text = xmlHttp.responseText;// 接收返回内容  
                if (text == "true"){
                	var accounts=document.getElementById("accountMsg");
                	accounts.innerHTML="<font color=\"red\">用户名重复，请重新输入</font>"; 
                    flag = false;               // 无法提交表单  
                
                  
                }else {  
                  var accounts=document.getElementById("accountMsg");
                  
                	accounts.innerHTML="<font color=\"green\">用户名输入正确</font>"; 
                     flag = true;
                }  
            }  
        }  
    }
    function checkForm(){
   		 return flag;
    }  
    function validateUsernum(){		//校验账号
    
	var account = document.getElementById("signup_account");//获取账号
	var accountSpan=document.getElementById("accountMsg");
	if(account.value.length>0){
	accountSpan.innerHTML="<font color=\"green\">用户名输入正确</font>";
	return true;
	}
	else 
	{
	accountSpan.innerHTML="<font color=\"red\">用户名输入错误</font>";
	return false;}
	}
    
	</script>

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
			<div class="other-wrap login-wrap ng-scope"
				data-ng-controller="user_login_ctrl">
				<div class="single-panel clearfix" data-minheight="58"
					style="min-height:191px;">

					<div class="single-panel-inner middle">
						<div class="single-panel-header">
							<h3>注册新用户</h3>

						</div>
						<div class="single-panel-body">
							<div class="single-panel-section">
								<form class="form-horizontal"
									action="<c:url value='/RegisterServlet'/>" method="post"
									onsubmit="return checkForm()">
									<div class="form-group">
										<label class="col-sm-3 hidden-xs control-label">账号:</label>

										<div class="col-sm-8 col-xs-12">
											<input class="form-control ng-pristine ng-invalid-id"
												type="text" name="signup_account" id="signup_account"
												placeholder="登录名以字母开头，由字母数字组成"
												onblur="checkUser(this.value)"> <span
												id="accountMsg"></span><br>
										</div>


									</div>

									<div class="form-group">
										<label class="col-sm-3 hidden-xs control-label">密码:</label>

										<div class="col-sm-8 col-xs-12">
											<input class="form-control ng-pristine ng-invalid-password"
												type="password" name="signup_password"
												placeholder="输入最小长度6位，最大长度12位密码"></input>
										</div>


									</div>

									<div class="form-group">
										<label class="col-sm-3 hidden-xs control-label">确认密码:</label>

										<div class="col-sm-8 col-xs-12">
											<input class="form-control ng-pristine ng-invalid-passwor"
												type="password" name="signup_againPassword"
												placeholder="再输入一次密码"></input>
										</div>


									</div>


									<div class="form-group">
										

											<label class="col-sm-3 hidden-xs control-label">学校:</label>

											<div class="form-select col-sm-8 col-xs-12">
												<select class="form-control" name="signup_school" id="school">
													<option value="选择你的学校">选择你的学校</option>
													
												</select> 
												<select class="form-control" name="signup_college" id="college">
													<option value="选择你的学院">选择你的学院</option>
												</select>
											</div>
										
									</div>


									<div class="form-group">
										<label class="col-sm-3 hidden-xs control-label">学号:</label>

										<div class="col-sm-8 col-xs-12">
											<input class="form-control ng-pristine ng-invalid-number"
												type="text" name="signup_number" placeholder="请输入你的学号"></input>
										</div>


									</div>
									<div class="form-group">
										<label class="col-sm-3 hidden-xs control-label">姓名:</label>

										<div class="col-sm-8 col-xs-12">
											<input class="form-control ng-pristine ng-invalid-name"
												type="text" name="signup_name" placeholder="请输入你的姓名"></input>
										</div>


									</div>
									<div class="form-group">
										<label class="col-sm-3 hidden-xs control-label">手机:</label>

										<div class="col-sm-8 col-xs-12">
											<input
												class="form-control ng-pristine ng-invalid-phone-number"
												type="text" name="signup_phone_number"
												placeholder="请输入你的手机号"></input>
										</div>


									</div>

									<div class="form-group">
										<label class="col-sm-3 hidden-xs control-label">QQ:</label>

										<div class="col-sm-8 col-xs-12">
											<input class="form-control ng-pristine ng-invalid-qq"
												type="text" name="signup_qq" placeholder="请输入你的QQ(选填)"></input>
										</div>


									</div>

									<div class="form-group">
										<label class="col-sm-3 hidden-xs control-label">邮箱:</label>

										<div class="col-sm-8 col-xs-12">
											<input class="form-control ng-pristine ng-invalid-email"
												type="email" name="signup_email" placeholder="请输入你的邮箱(选填)"></input>
										</div>


									</div>



									<div class="form-group">
										<div class="col-sm-3 hidden-xs"></div>
										<div class="col-sm-8">
											<button id="btn-login" class="btn btn-success"
												data-loading-text="注册中.." type="submit">注册新用户</button>

										</div>


									</div>
								</form>
							</div>

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