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
     
    <link rel="stylesheet" type="text/css" href="../css/bootstrap-datetimepicker.min.css">
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
					      <a href="#finderPub-cards" data-toggle="tab">卡类</a>
					   <li><a href="#finderPub-elec" data-toggle="tab">电子产品类</a></li>
					   <li><a href="#finderPub-day" data-toggle="tab">日常用品类</a></li>
					   <li><a href="#finderPub-pack" data-toggle="tab">包类</a></li>
					   <li><a href="#finderPub-orna" data-toggle="tab">配饰类</a></li>
					   <li><a href="#finderPub-other" data-toggle="tab">其它</a></li>
					   
					</ul>
					<div id="myTabContent" class="tab-content">
					
					   <div class="tab-pane fade in active" id="finderPub-cards">
					            <div class="form-group" >
								      <select class="form-control" id="finderPubCards">
								         <option value="-1">请选择卡类别</option>
								         <option value="0">银行卡</option>
								         <option value="1">餐卡</option>
								         <option value="2">身份证</option>
								         <option value="3">会员卡</option>
								      </select>
								</div>
								<form class=" form-trans" id="finderPub-cards1" role="form" style="display:none;margin-top: 15px;">
								      <div class="form-group">
									    <label for="finderPub-bank-card">银行卡:</label>
									    <input type="text" class="form-control" id="finderPub-bank-card" placeholder="请输入卡号">
									  </div>
									  <div class="form-group">
									    <label for="finderPub-bank-cardName">持卡人姓名:</label>
									    <input type="text" class="form-control" id="finderPub-bank-cardName" placeholder="">
									  </div>
									  <div class="form-group forum-text">
													    
										<textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
									  </div>
									  <button type="button"  class="btn btn-default add">上传图片</button>
									  <div class="file-box" style="display:inline-block">
					 
									  <input type='text' name='textfield' id='textfield-finderPubcards1' class='txt' style="width: 160px;height:34px;"/>  
									  <input type='button' class='btn ' value='浏览...' />
									  <input type="file" name="fileField" class="brow-file" id="fileField-finderPubcards1" size="28" onchange="document.getElementById('textfield-finderPubcards1').value=this.value" />
															 
															
									  </div>
									  <button type="submit"  class="btn btn-success pull-right">提交</button>
								      
								</form>
								
								<form class=" form-trans" id="finderPub-cards2" role="form" style="display:none;margin-top: 15px;">
								      <div class="form-group">
									    <label for="finderPub-meal-card">餐卡:</label>
									    <input type="text" class="form-control" id="finderPub-meal-card" placeholder="学院">
									  </div>
									  <div class="form-group">
									    <label for="finderPub-meal-cardName">姓名:</label>
									    <input type="text" class="form-control" id="finderPub-meal-cardName" placeholder="">
									  </div>
									  
									  <div class="form-group forum-text">
													    
										<textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
									  </div>
									  <button type="button"  class="btn btn-default add">上传图片</button>
									  <div class="file-box" style="display:inline-block">
					 
									  <input type='text' name='textfield' id='textfield-finderPubcards2' class='txt' style="width: 160px;height:34px;"/>  
									  <input type='button' class='btn ' value='浏览...' />
									  <input type="file" name="fileField" class="brow-file" id="fileField-finderPubcards2" size="28" onchange="document.getElementById('textfield-finderPubcards2').value=this.value" />
															 
															
									  </div>
									  <button type="submit"  class="btn btn-success pull-right">提交</button>
								      
								</form>
								<form class=" form-trans" id="finderPub-cards3" role="form" style="display:none;margin-top: 15px;">
								      <div class="form-group">
									    <label for="finderPub-ide-card">身份证:</label>
									    <input type="text" class="form-control" id="finderPub-ide-card" placeholder="身份证号码">
									  </div>
									  <div class="form-group">
									    <label for="finderPub-ide-cardName">姓名:</label>
									    <input type="text" class="form-control" id="finderPub-ide-cardName" placeholder="">
									  </div>
									  
									  <div class="form-group forum-text">
													    
										<textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
									  </div>
									  <button type="button"  class="btn btn-default add">上传图片</button>
									  <div class="file-box" style="display:inline-block">
					 
									  <input type='text' name='textfield' id='textfield-finderPubcards3' class='txt' style="width: 160px;height:34px;"/>  
									  <input type='button' class='btn ' value='浏览...' />
									  <input type="file" name="fileField" class="brow-file" id="fileField-finderPubcards3" size="28" onchange="document.getElementById('textfield-finderPubcards3').value=this.value" />
															 
															
									  </div>
									  <button type="submit"  class="btn btn-success pull-right">提交</button>
								      
								</form>
								<form class=" form-trans" id="finderPub-cards4" role="form" style="display:none;margin-top: 15px;">
								      
									  <div class="form-group">
									    <label for="finderPub-vip-cardName">会员卡:</label>
									    <input type="text" class="form-control" id="finderPub-vip-cardName" placeholder="姓名">
									  </div>
									  
									  <div class="form-group forum-text">
													    
										<textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
									  </div>
									  <button type="button"  class="btn btn-default add">上传图片</button>
									  <div class="file-box" style="display:inline-block">
					 
									  <input type='text' name='textfield' id='textfield-finderPubcards4' class='txt' style="width: 160px;height:34px;"/>  
									  <input type='button' class='btn ' value='浏览...' />
									  <input type="file" name="fileField" class="brow-file" id="fileField-finderPubcards4" size="28" onchange="document.getElementById('textfield-finderPubcards4').value=this.value" />
															 
															
									  </div>
									  <button type="submit"  class="btn btn-success pull-right">提交</button>
								      
								</form>
								
					   </div>
					   
					   
					   <!-- 电子产品类 -->
                  <div class="tab-pane fade" id="finderPub-elec">
					        
							
							<form action="">
							          <div class="form-group">  
											 <label for="select-finderelec">电子产品类别:</label>
											 <select class="form-control" id="select-finderelec">
											 <option value="">请选择</option>
											 <option value=""></option>
											 <option value=""></option>
														         
											 </select>
									  </div>
							          <div class="form-group">
										     <label for="elecfinderPub-name">姓名:</label>
										     <input type="text" class="form-control" id="elecfinderPub-name" placeholder="请输入姓名">
									  </div>
									  
									  <div class="form-group">
														        <label for="elecfinderPub-place">拾到时间:</label>
												                <div class='input-group date' >
												                    <input data-date-format="yyyy-mm-dd" type='text' class="form-control" id="elefinderPub-time" />
												                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
												                    </span>
												                </div>
														  
														  
														  </div>
									  
									  <div class="form-group">
														    <label for="elecfinderPub-place">拾到地点:</label>
														    <input type="text" class="form-control" id="elecfinderPub-place" placeholder="">
														    
									  </div>
									  
									  <div class="form-group">
														    <label for="elecfinderPub-phone">电话:</label>
														    <input type="text" class="form-control" id="elecfinderPub-phone" placeholder="">
														    
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
				  <div class="tab-pane fade" id="finderPub-day">
					        
							
							<form action="">
							          <div class="form-group">  
											 <label for="select-finderday">日用产品类别:</label>
											 <select class="form-control" id="select-finderday">
											 <option value="">请选择</option>
											 <option value=""></option>
											 <option value=""></option>
														         
											 </select>
									  </div>
							          <div class="form-group">
										     <label for="dayfinderPub-name">姓名:</label>
										     <input type="text" class="form-control" id="dayfinderPub-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
											 <label for="dayfinderPub-place">拾到时间:</label>
											 <div class='input-group date' >
											 <input data-date-format="yyyy-mm-dd" type='text' class="form-control" id="dayfinderPub-time" />
											 <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
											 </span>
											 </div>
														  
														  
									  </div>
									  
									  <div class="form-group">
														    <label for="dayfinderPub-place">丢失地点:</label>
														    <input type="text" class="form-control" id="dayfinderPub-place" placeholder="">
														    
									  </div>
									  
									  <div class="form-group">
														    <label for="dayfinderPub-phone">电话:</label>
														    <input type="text" class="form-control" id="dayfinderPub-phone" placeholder="">
														    
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
				  <div class="tab-pane fade" id="finderPub-pack">
					        
							
							<form action="">
							          <div class="form-group">  
											 <label for="pack-finderday">日用产品类别:</label>
											 <select class="form-control" id="pack-finderday">
											 <option value="">请选择</option>
											 <option value=""></option>
											 <option value=""></option>
														         
											 </select>
									  </div>
							          <div class="form-group">
										     <label for="packfinderPub-name">姓名:</label>
										     <input type="text" class="form-control" id="packfinderPub-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
											 <label for="packfinderPub-place">拾到时间:</label>
											 <div class='input-group date' >
											 <input data-date-format="yyyy-mm-dd" type='text' class="form-control" id="packfinderPub-time" />
											 <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
											 </span>
											 </div>
														  
														  
									  </div>
									  
									   <div class="form-group">
											 <label for="packfinderPub-place">丢失地点:</label>
											 <input type="text" class="form-control" id="packfinderPub-place" placeholder="">
														    
									  </div>
									  
									  <div class="form-group">
											 <label for="packfinderPub-phone">电话:</label>
											 <input type="text" class="form-control" id="packfinderPub-phone" placeholder="">
														    
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
				  <div class="tab-pane fade" id="finderPub-orna">
					        
							
							<form action="">
							          <div class="form-group">  
											 <label for="orna-finderday">日用产品类别:</label>
											 <select class="form-control" id="orna-finderday">
											 <option value="">请选择</option>
											 <option value=""></option>
											 <option value=""></option>
														         
											 </select>
									  </div>
							          <div class="form-group">
										     <label for="ornafinderPub-name">姓名:</label>
										     <input type="text" class="form-control" id="ornafinderPub-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
											 <label for="ornafinderPub-place">拾到时间:</label>
											 <div class='input-group date' >
											 <input data-date-format="yyyy-mm-dd" type='text' class="form-control" id="ornafinderPub-time" />
											 <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
											 </span>
											 </div>
														  
														  
									  </div>
									  
									  <div class="form-group">
											 <label for="ornafinderPub-place">丢失地点:</label>
											 <input type="text" class="form-control" id="ornafinderPub-place" placeholder="">
														    
									  </div>
									  
									  <div class="form-group">
											 <label for="ornafinderPub-phone">电话:</label>
											 <input type="text" class="form-control" id="ornafinderPub-phone" placeholder="">
														    
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
				  <div class="tab-pane fade" id="finderPub-other">
					        
							
							<form action="">
							          
							          <div class="form-group">
										     <label for="otherfinderPub-name">姓名:</label>
										     <input type="text" class="form-control" id="otherfinderPub-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
										     <label for="otherfinderPub-product">拾到的物品名称:</label>
										     <input type="text" class="form-control" id="otherfinderPub-product" placeholder="">
									  </div>
									  <div class="form-group">
											 <label for="ornafinderPub-place">拾到时间:</label>
											 <div class='input-group date' >
											 <input data-date-format="yyyy-mm-dd" type='text' class="form-control" id="ornafinderPub-time" />
											 <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
											 </span>
											 </div>
														  
														  
									  </div>
									  
									  <div class="form-group">
											 <label for="otherfinderPub-place">丢失地点:</label>
											 <input type="text" class="form-control" id="otherfinderPub-place" placeholder="">
														    
									  </div>
									  
									  <div class="form-group">
											 <label for="otherfinderPub-phone">电话:</label>
											 <input type="text" class="form-control" id="otherfinderPub-phone" placeholder="">
														    
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
    <script type="text/javascript" src="../js/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>
    <script type="text/javascript" src="../js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
    <script type="text/javascript">
        
		    $('#finderPubCards').on('change', function(){
		    	  var val = $(this).val();
		    	  switch(val){
		    	  case '-1': $('#finderPub-cards1,#finderPub-cards2, #finderPub-cards3,#finderPub-cards4').hide();  break;
		    	  case '0': $('#finderPub-cards1').show(); $('#finderPub-cards2, #finderPub-cards3,#finderPub-cards4').hide(); break;
		    	  case '1': $('#finderPub-cards2').show(); $('#finderPub-cards1, #finderPub-cards3,#finderPub-cards4').hide(); break;
		    	  case '2': $('#finderPub-cards3').show(); $('#finderPub-cards2, #finderPub-cards1,#finderPub-cards4').hide(); break;
		    	  case '3': $('#finderPub-cards4').show(); $('#finderPub-cards2, #finderPub-cards3,#finderPub-cards1').hide(); break;
		    	  }
		    	});
              
		    $(".file-box").hide();
		    $(function(){
		    	$(".add").click(function(){
		    		$(".file-box").show();
		    	})
		    	
		    });
		    
		    
		    $(function() {
		        $('.date').datetimepicker({
		        	format: 'yyyy-mm-dd',  
			        language: 'zh-CN',
			        minView: "month",
			        autoclose:true,
			        pickerPosition: "bottom-left"
		        });
		      });
    
    
    </script>
  </body>
  </html>