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
							data-toggle="dropdown">失物招领 <span class="caret"></span></a>
						
							<ul class="dropdown-menu" role="menu">

								<li><a href="#">action</a>
								</li>

								<li role="separator" class="divider"></li>
								<li><a href="#">Separated</a>
								</li>
								
							</ul>
						<li><a href="funcmain.jsp">社区</a></li>
						
						</li>

					</ul>
					<ul id="header-me" class="nav navbar-nav navbar-right ng-scope"
						ng-controller="user_ctrl">
						<li class="divider-vertical hidden-xs"></li>
						<li><a  href="#">用户</a>
						</li>


					</ul>

				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
	
    </header> 
    <div id="wrap-all">
      <div id="main" class="inner">
        <div class="page_navbar">
          <div class="page-navbar-warp">
            <div class="title">
            <h3><a href="#">用户社区</a></h3>
            </div>
            <div class="main">
              <div class="toolbar_panel pull-right">
                <a class="btn btn-danger" target="_self" href="#">个人中心</a>
              </div>
            </div>
          </div>
        </div>
        <div class="forum-panel">
          <div class="forum-container">
            <div class="col-xs-12 col-sm-9">
              
              <div class="forum-content">
                <div class="forum-category-wrapper">
                  <div class="forum-heading">
                    <h3>发布招领信息</h3>
                  </div>
                  <div class="thread-list">
                    <ul id="myTab" class="nav nav-tabs ">
					   <li class="active">
					      <a href="#ownerPub-cards" data-toggle="tab">卡类</a>
					   <li><a href="#ownerPub-elec" data-toggle="tab">电子产品类</a></li>
					   <li><a href="#ownerPub-day" data-toggle="tab">日常用品类</a></li>
					   <li><a href="#ownerPub-pack" data-toggle="tab">包类</a></li>
					   <li><a href="#ownerPub-orna" data-toggle="tab">配饰类</a></li>
					   <li><a href="#ownerPub-other" data-toggle="tab">其它</a></li>
					   
					</ul>
					<div id="myTabContent" class="tab-content">
					
					   <div class="tab-pane fade in active" id="ownerPub-cards">
					            <div class="form-group" >
								      <select class="form-control" id="ownerPubCards">
								         <option value="-1">请选择卡类别</option>
								         <option value="0">银行卡</option>
								         <option value="1">餐卡</option>
								         <option value="2">身份证</option>
								         <option value="3">会员卡</option>
								      </select>
								</div>
								<form class="form-inline form-trans" id="ownerPub-cards1" role="form" style="display:none;margin-top: 15px;">
								      <div class="form-group">
									    <label for="ownerPub-bank-card">银行卡:</label>
									    <input type="text" class="form-control" id="ownerPub-bank-card" placeholder="请输入卡号">
									  </div>
									  <div class="form-group">
									    <label for="ownerPub-bank-cardName">持卡人姓名:</label>
									    <input type="text" class="form-control" id="ownerPub-bank-cardName" placeholder="">
									  </div>
								      
								</form>
								
								<form class="form-inline form-trans" id="ownerPub-cards2" role="form" style="display:none;margin-top: 15px;">
								      <div class="form-group">
									    <label for="ownerPub-meal-card">餐卡:</label>
									    <input type="text" class="form-control" id="ownerPub-meal-card" placeholder="学院">
									  </div>
									  <div class="form-group">
									    <label for="ownerPub-meal-cardName">姓名:</label>
									    <input type="text" class="form-control" id="ownerPub-meal-cardName" placeholder="">
									  </div>
								      
								</form>
								<form class="form-inline form-trans" id="ownerPub-cards3" role="form" style="display:none;margin-top: 15px;">
								      <div class="form-group">
									    <label for="ownerPub-ide-card">身份证:</label>
									    <input type="text" class="form-control" id="ownerPub-ide-card" placeholder="身份证号码">
									  </div>
									  <div class="form-group">
									    <label for="ownerPub-ide-cardName">姓名:</label>
									    <input type="text" class="form-control" id="ownerPub-ide-cardName" placeholder="">
									  </div>
								      
								</form>
								<form class="form-inline form-trans" id="ownerPub-cards4" role="form" style="display:none;margin-top: 15px;">
								      
									  <div class="form-group">
									    <label for="ownerPub-vip-cardName">会员卡:</label>
									    <input type="text" class="form-control" id="ownerPub-vip-cardName" placeholder="姓名">
									  </div>
								      
								</form>
								<form role="form" id="form-des-owner">
								  <div class="form-group">
								   <input class="form-control  ns-error" type="text" placeholder="输入标题"></input>
								  
								  </div>
								  <div class="form-group forum-text">
								    
								    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
								  </div>
								  <button type="button"  class="btn btn-default add">上传图片</button>
							          <div class="file-box" style="display:inline-block">
 
										 <input type='text' name='textfield' id='textfield-cards' class='txt' style="width: 160px;height:34px;"/>  
										 <input type='button' class='btn ' value='浏览...' />
										 <input type="file" name="fileField" class="brow-file" id="fileField-cards" size="28" onchange="document.getElementById('textfield-cards').value=this.value" />
										 
										
									  </div>
							          <button type="submit"  class="btn btn-success pull-right">提交</button>
								</form>
					   </div>
					   
					   
					   <!-- 电子产品类 -->
                  <div class="tab-pane fade" id="ownerPub-elec">
					        
							
							<form action="">
							   
							          <div class="form-group">
										     <label for="elecownerPub-name">姓名:</label>
										     <input type="text" class="form-control" id="elecownerPubb-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
									    <label for="elecownerPub-brande">物品品牌:</label>
									    <input type="text" class="form-control" id="elecownerPub-brand" placeholder="">
									    
									  </div>
									  <div class="form-group">
									    <label for="elecownerPub-time">丢失时间:</label>
									    <input type="text" class="form-control" id="elecownerPub-time" placeholder="">
									    
									  </div>
									  <div class="form-group forum-text">
							    
									    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
									  </div>
							          <button type="button"  class="btn btn-default add">上传图片</button>
							          <div class="file-box" style="display:inline-block">
 
										 <input type='text' name='textfield' id='textfield-elec' class='txt' style="width: 160px;height:34px;"/>  
										 <input type='button' class='btn ' value='浏览...' />
										 <input type="file" name="fileField" class="brow-file" id="fileField-elec" size="28" onchange="document.getElementById('textfield-elec').value=this.value" />
										 
										
									  </div>
							          <button type="submit"  class="btn btn-success pull-right">提交</button>
							
							</form>
				  
				  		
							
							
							
				  </div>
				  
				  <!-- 日常用品类 -->
				  <div class="tab-pane fade" id="ownerPub-day">
					        
							
							<form action="">
							   
							          <div class="form-group">
										     <label for="dayownerPub-name">姓名:</label>
										     <input type="text" class="form-control" id="dayownerPub-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
									    <label for="dayownerPub-time">丢失时间:</label>
									    <input type="text" class="form-control" id="dayownerPub-time" placeholder="">
									    
									  </div>
									  <div class="form-group forum-text">
							    
									    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
									  </div>
							          <button type="button"  class="btn btn-default add">上传图片</button>
							          <div class="file-box" style="display:inline-block">
 
										 <input type='text' name='textfield' id='textfield-day' class='txt' style="width: 160px;height:34px;"/>  
										 <input type='button' class='btn ' value='浏览...' />
										 <input type="file" name="fileField" class="brow-file" id="fileField-day" size="28" onchange="document.getElementById('textfield-day').value=this.value" />
										 
										
									  </div>
							          <button type="submit"  class="btn btn-success pull-right">提交</button>
							
							</form>
				  
				  		
							
							
							
				  </div>
				  
				  <!-- 包类 -->
				  <div class="tab-pane fade" id="ownerPub-pack">
					        
							
							<form action="">
							   
							          <div class="form-group">
										     <label for="packownerPub-name">姓名:</label>
										     <input type="text" class="form-control" id="packownerPub-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
									    <label for="packownerPub-time">丢失时间:</label>
									    <input type="text" class="form-control" id="packownerPub-time" placeholder="">
									    
									  </div>
									  <div class="form-group forum-text">
							    
									    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
									  </div>
							          <button type="button"  class="btn btn-default add">上传图片</button>
							          <div class="file-box" style="display:inline-block">
 
										 <input type='text' name='textfield' id='textfield-pack' class='txt' style="width: 160px;height:34px;"/>  
										 <input type='button' class='btn ' value='浏览...' />
										 <input type="file" name="fileField" class="brow-file" id="fileField-pack" size="28" onchange="document.getElementById('textfield-pack').value=this.value" />
										 
										
									  </div>
							          <button type="submit"  class="btn btn-success pull-right">提交</button>
							
							</form>
				  
				  		
							
							
							
				  </div>
				  
				  <!-- 配饰类 -->
				  <div class="tab-pane fade" id="ownerPub-orna">
					        
							
							<form action="">
							   
							          <div class="form-group">
										     <label for="ornaownerPub-name">姓名:</label>
										     <input type="text" class="form-control" id="ornaownerPub-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
									    <label for="ornaownerPub-time">丢失时间:</label>
									    <input type="text" class="form-control" id="ornaownerPub-time" placeholder="">
									    
									  </div>
									  <div class="form-group forum-text">
							    
									    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
									  </div>
							          <button type="button"  class="btn btn-default add">上传图片</button>
							          <div class="file-box" style="display:inline-block">
 
										 <input type='text' name='textfield' id='textfield-orna' class='txt' style="width: 160px;height:34px;"/>  
										 <input type='button' class='btn ' value='浏览...' />
										 <input type="file" name="fileField" class="brow-file" id="fileField-orna" size="28" onchange="document.getElementById('textfield-orna').value=this.value" />
										 
										
									  </div>
							          <button type="submit"  class="btn btn-success pull-right">提交</button>
							
							</form>
				  
				  		
							
							
							
				  </div>
				  
				  <!-- 其它 -->
				  <div class="tab-pane fade" id="ownerPub-other">
					        
							
							<form action="">
							   
							          <div class="form-group">
										     <label for="otherownerPub-name">姓名:</label>
										     <input type="text" class="form-control" id="otherownerPub-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
										     <label for="otherownerPub-product">丢失的物品名称:</label>
										     <input type="text" class="form-control" id="otherownerPub-product" placeholder="">
									  </div>
									  <div class="form-group">
									    <label for="otherownerPubtime">丢失时间:</label>
									    <input type="text" class="form-control" id="otherownerPub-time" placeholder="">
									    
									  </div>
									  <div class="form-group forum-text">
							    
									    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
									  </div>
							          <button type="button"  class="btn btn-default add">上传图片</button>
							          <div class="file-box" style="display:inline-block">
 
										 <input type='text' name='textfield' id='textfield-other' class='txt' style="width: 160px;height:34px;"/>  
										 <input type='button' class='btn ' value='浏览...' />
										 <input type="file" name="fileField" class="brow-file" id="fileField-other" size="28" onchange="document.getElementById('textfield-other').value=this.value" />
										 
										
									  </div>
							          <button type="submit"  class="btn btn-success pull-right">提交</button>
							</form>
				  
				  		
							
							
							
				  </div>
					   
					</div>
					
                  </div>
                  
                </div>
              </div>
            </div>
            <div class="sidebar col-xs-12 col-sm-3">
              <div class="sidebar-inner">
                <div class="sidebar-widget">
                  <h4>功能</h4>
                  <ul>
                    <li><a href="PubLost.jsp">发布失物信息</a></li>
                    <li><a href="ownerPub.jsp">发布招领信息</a></li>
                    <li><a href="finderSearch.jsp">查询失物信息</a></li>
                    <li><a href="ownerSearch.jsp">查询招领信息</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    
    </div> 
  
    <!-- jQuery  -->
    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        
		    $('#ownerPubCards').on('change', function(){
		    	  var val = $(this).val();
		    	  switch(val){
		    	  case '-1': $('#ownerPub-cards1,#ownerPub-cards2, #ownerPub-cards3,#ownerPub-cards4').hide();  break;
		    	  case '0': $('#ownerPub-cards1').show(); $('#ownerPub-cards2, #ownerPub-cards3,#ownerPub-cards4').hide(); break;
		    	  case '1': $('#ownerPub-cards2').show(); $('#ownerPub-cards1, #ownerPub-cards3,#ownerPub-cards4').hide(); break;
		    	  case '2': $('#ownerPub-cards3').show(); $('#ownerPub-cards2, #ownerPub-cards1,#ownerPub-cards4').hide(); break;
		    	  case '3': $('#ownerPub-cards4').show(); $('#ownerPub-cards2, #ownerPub-cards3,#ownerPub-cards1').hide(); break;
		    	  }
		    	});
              
		    $(".file-box").hide();
		    $(function(){
		    	$(".add").click(function(){
		    		$(".file-box").show();
		    	})
		    	
		    })
    
    
    </script>
  </body>
  </html>