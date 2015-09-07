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
			            <li class="active"><a href="funcmain.jsp">失物招领</a></li>
			        </ul>
			        <ul id="header_me" class="nav navbar-nav navbar-right">
			            <li class="divider-vertical hidden-xs"></li>
			            <li><a class="mr_15" href="">用户</a></li>
			            <li><a href="">退出</a></li>
			        </ul>
			    </div>
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
                    <h3>查询招领信息</h3>
                  </div>
                  <div class="thread-list">
                    <ul id="myTab" class="nav nav-tabs ">
					   <li class="active">
					      <a href="#ownerSearch-cards" data-toggle="tab">卡类</a>
					   </li>
					   <li><a href="#ownerSearch-elec" data-toggle="tab">电子产品类</a></li>
					   <li><a href="#ownerSearch-day" data-toggle="tab">日常用品类</a></li>
					   <li><a href="#ownerSearch-pack" data-toggle="tab">包类</a></li>
					   <li><a href="#ownerSearch-orna" data-toggle="tab">配饰类</a></li>
					   <li><a href="#ownerSearch-other" data-toggle="tab">其它</a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
					
					   <div class="tab-pane fade in active" id="ownerSearch-cards">
					            <div class="form-group" >
								      <select class="form-control" id="ownerseaCards">
								         <option value="-1">请选择卡类别</option>
								         <option value="0">银行卡</option>
								         <option value="1">餐卡</option>
								         <option value="2">身份证</option>
								         <option value="3">会员卡</option>
								      </select>
								</div>
								<form class="form-inline form-trans" id="ownerSearch-cards1" role="form" style="display:none;margin-top: 15px;">
								      <div class="form-group">
									    <label for="ownerSearch-bank-card">银行卡:</label>
									    <input type="text" class="form-control" id="ownerSearch-bank-card" placeholder="请输入卡号">
									  </div>
									  <div class="form-group">
									    <label for="ownerSearch-bank-cardName">持卡人姓名:</label>
									    <input type="text" class="form-control" id="ownerSearch-bank-cardName" placeholder="">
									    <button type="submit" class="btn btn-default">查询</button>
									  </div>
									  
								      
								</form>
								
								<form class="form-inline form-trans" id="ownerSearch-cards2" role="form" style="display:none;margin-top: 15px;">
								      <div class="form-group">
									    <label for="ownerSearch-meal-card">餐卡:</label>
									    <input type="text" class="form-control" id="ownerSearch-meal-card" placeholder="学院">
									  </div>
									  <div class="form-group">
									    <label for="ownerSearch-meal-cardName">姓名:</label>
									    <input type="text" class="form-control" id="ownerSearch-meal-cardName" placeholder="">
									    <button type="submit" class="btn btn-default">查询</button>
									  </div>
								      
								</form>
								<form class="form-inline form-trans" id="ownerSearch-cards3" role="form" style="display:none;margin-top: 15px;">
								      <div class="form-group">
									    <label for="ownerSearch-ide-card">身份证:</label>
									    <input type="text" class="form-control" id="ownerSearch-ide-card" placeholder="身份证号码">
									  </div>
									  <div class="form-group">
									    <label for="ownerSearch-ide-cardName">姓名:</label>
									    <input type="text" class="form-control" id="ownerSearch-ide-cardName" placeholder="">
									    <button type="submit" class="btn btn-default">查询</button>
									  </div>
								      
								</form>
								<form class="form-inline form-trans" id="ownerSearch-cards4" role="form" style="display:none;margin-top: 15px;">
								      
									  <div class="form-group">
									    <label for="ownerSearch-vip-cardName">会员卡:</label>
									    <input type="text" class="form-control" id="ownerSearch-vip-cardName" placeholder="姓名">
									    <button type="submit" class="btn btn-default">查询</button>
									  </div>
								      
								</form>
								<table class="table table-striped table-cardSearch-owner">
								   <caption>查询结果</caption>
								   <thead>
								      <tr>
								         <th>类别</th>
								         <th>卡号</th>
								         <th>姓名</th>
								         <th>学院</th>
								         <th>发布时间</th>
								         <th>联系方式</th>
								         <th>失物/招领</th>
								      </tr>
								   </thead>
								   <tbody>
								      <tr>
								         <td></td>
								         <td>1</td>
								         <td>Sachin</td>
								         <td></td>
								         <td></td>
								         <td></td>
								         <td></td>
								      </tr>
								      <tr>
								         <td></td>
								         <td>2</td>
								         <td>Mumbai</td>
								         <td></td>
								         <td></td>
								         <td></td>
								         <td></td>
								      </tr>
								      <tr>
								         <td></td>
								         <td>3</td>
								         <td>Sachin</td>
								         <td></td>
								         <td></td>
								         <td></td>
								         <td></td>
								      </tr>
								   </tbody>
								</table>
								
                  </div>
                  
                  <!-- 电子产品类 -->
                  <div class="tab-pane fade" id="ownerSearch-elec">
					        
							
							<form action="">
							   
							          <div class="form-group">
										     <label for="elecOwnerSearch-name">姓名:</label>
										     <input type="text" class="form-control" id="elecOwnerSearch-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
									    <label for="elecOwnerSearch-brande">物品品牌:</label>
									    <input type="text" class="form-control" id="elecOwnerSearch-brand" placeholder="">
									    
									  </div>
									  <div class="form-group">
									    <label for="elecOwnerSearch-time">丢失时间:</label>
									    <input type="text" class="form-control" id="elecOwnerSearch-time" placeholder="">
									    
									  </div>
									  <div class="form-group forum-text">
							    
									    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
									  </div>
							          <button type="submit"  class="btn btn-default">查询</button>
							
							</form>
				  
				  		
							
							
							
				  </div>
				  
				  <!-- 日常用品类 -->
				  <div class="tab-pane fade" id="ownerSearch-day">
					        
							
							<form action="">
							   
							          <div class="form-group">
										     <label for="dayOwnerSearch-name">姓名:</label>
										     <input type="text" class="form-control" id="dayOwnerSearch-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
									    <label for="dayOwnerSearch-time">丢失时间:</label>
									    <input type="text" class="form-control" id="dayOwnerSearch-time" placeholder="">
									    
									  </div>
									  <div class="form-group forum-text">
							    
									    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
									  </div>
							          <button type="submit"  class="btn btn-default">查询</button>
							
							</form>
				  
				  		
							
							
							
				  </div>
				  
				  <!-- 包类 -->
				  <div class="tab-pane fade" id="ownerSearch-pack">
					        
							
							<form action="">
							   
							          <div class="form-group">
										     <label for="packOwnerSearch-name">姓名:</label>
										     <input type="text" class="form-control" id="packOwnerSearch-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
									    <label for="packOwnerSearch-time">丢失时间:</label>
									    <input type="text" class="form-control" id="packOwnerSearch-time" placeholder="">
									    
									  </div>
									  <div class="form-group forum-text">
							    
									    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
									  </div>
							          <button type="submit"  class="btn btn-default">查询</button>
							
							</form>
				  
				  		
							
							
							
				  </div>
				  
				  <!-- 配饰类 -->
				  <div class="tab-pane fade" id="ownerSearch-orna">
					        
							
							<form action="">
							   
							          <div class="form-group">
										     <label for="ornaOwnerSearch-name">姓名:</label>
										     <input type="text" class="form-control" id="ornaOwnerSearch-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
									    <label for="ornaOwnerSearch-time">丢失时间:</label>
									    <input type="text" class="form-control" id="ornaOwnerSearch-time" placeholder="">
									    
									  </div>
									  <div class="form-group forum-text">
							    
									    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
									  </div>
							          <button type="submit"  class="btn btn-default">查询</button>
							
							</form>
				  
				  		
							
							
							
				  </div>
				  
				  <!-- 其它 -->
				  <div class="tab-pane fade" id="ownerSearch-other">
					        
							
							<form action="">
							   
							          <div class="form-group">
										     <label for="otherOwnerSearch-name">姓名:</label>
										     <input type="text" class="form-control" id="otherOwnerSearch-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
										     <label for="otherOwnerSearch-product">丢失的物品名称:</label>
										     <input type="text" class="form-control" id="otherOwnerSearch-product" placeholder="">
									  </div>
									  <div class="form-group">
									    <label for="otherOwnerSearch-time">丢失时间:</label>
									    <input type="text" class="form-control" id="otherOwnerSearch-time" placeholder="">
									    
									  </div>
									  <div class="form-group forum-text">
							    
									    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
									  </div>
							          <button type="submit"  class="btn btn-default">查询</button>
							
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
                    <li><a href="ownerPub.jsp">发布失物信息</a></li>
                    <li><a href="PubLost.jsp">发布招领信息</a></li>
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
        
		    $('#ownerseaCards').on('change', function(){
		    	  var val = $(this).val();
		    	  switch(val){
		    	  case '-1': $('#ownerSearch-cards1,#ownerSearch-cards2, #ownerSearch-cards3,#ownerSearch-cards4').hide();  break;
		    	  case '0': $('#ownerSearch-cards1').show(); $('#ownerSearch-cards2, #ownerSearch-cards3,#ownerSearch-cards4').hide(); break;
		    	  case '1': $('#ownerSearch-cards2').show(); $('#ownerSearch-cards1, #ownerSearch-cards3,#ownerSearch-cards4').hide(); break;
		    	  case '2': $('#ownerSearch-cards3').show(); $('#ownerSearch-cards2, #ownerSearch-cards1,#ownerSearch-cards4').hide(); break;
		    	  case '3': $('#ownerSearch-cards4').show(); $('#ownerSearch-cards2, #ownerSearch-cards3,#ownerSearch-cards1').hide(); break;
		    	  }
		    	});
    
    
    
    </script>
  </body>
  </html>