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
			            <li  class="active"><a href="funcmain.jsp">失物招领</a></li>
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
                    <h3>查询失物信息</h3>
                  </div>
                  <div class="thread-list">
                    <ul id="myTab" class="nav nav-tabs ">
					   <li class="active">
					      <a href="#finderSearch-cards" data-toggle="tab">卡类</a>
					   </li>
					   <li><a href="#finderSearch-elec" data-toggle="tab">电子产品类</a></li>
					   <li><a href="#finderSearch-day" data-toggle="tab">日常用品类</a></li>
					   <li><a href="#finderSearch-pack" data-toggle="tab">包类</a></li>
					   <li><a href="#finderSearch-orna" data-toggle="tab">配饰类</a></li>
					   <li><a href="#finderSearch-other" data-toggle="tab">其它</a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
					
					   <div class="tab-pane fade in active" id="finderSearch-cards">
					            <div class="form-group" >
								      <select class="form-control" id="finderseaCards">
								         <option value="-1">请选择卡类别</option>
								         <option value="0">银行卡</option>
								         <option value="1">餐卡</option>
								         <option value="2">身份证</option>
								         <option value="3">会员卡</option>
								      </select>
								</div>
								<form class="form-inline form-trans" id="finderSearch-cards1" role="form" style="display:none;margin-top: 15px;">
								      <div class="form-group">
									    <label for="finderSearch-bank-card">银行卡:</label>
									    <input type="text" class="form-control" id="finderSearch-bank-card" placeholder="请输入卡号">
									  </div>
									  <div class="form-group">
									    <label for="finderSearch-bank-cardName">持卡人姓名:</label>
									    <input type="text" class="form-control" id="finderSearch-bank-cardName" placeholder="">
									    <button type="submit" class="btn btn-default">查询</button>
									  </div>
									  
								      
								</form>
								
								<form class="form-inline form-trans" id="finderSearch-cards2" role="form" style="display:none;margin-top: 15px;">
								      <div class="form-group">
									    <label for="finderSearch-meal-card">餐卡:</label>
									    <input type="text" class="form-control" id="finderSearch-meal-card" placeholder="学院">
									  </div>
									  <div class="form-group">
									    <label for="finderSearch-meal-cardName">姓名:</label>
									    <input type="text" class="form-control" id="finderSearch-meal-cardName" placeholder="">
									    <button type="submit" class="btn btn-default">查询</button>
									  </div>
								      
								</form>
								<form class="form-inline form-trans" id="finderSearch-cards3" role="form" style="display:none;margin-top: 15px;">
								      <div class="form-group">
									    <label for="finderSearch-ide-card">身份证:</label>
									    <input type="text" class="form-control" id="finderSearch-ide-card" placeholder="身份证号码">
									  </div>
									  <div class="form-group">
									    <label for="finderSearch-ide-cardName">姓名:</label>
									    <input type="text" class="form-control" id="finderSearch-ide-cardName" placeholder="">
									    <button type="submit" class="btn btn-default">查询</button>
									  </div>
								      
								</form>
								<form class="form-inline form-trans" id="finderSearch-cards4" role="form" style="display:none;margin-top: 15px;">
								      
									  <div class="form-group">
									    <label for="finderSearch-vip-cardName">会员卡:</label>
									    <input type="text" class="form-control" id="finderSearch-vip-cardName" placeholder="姓名">
									    <button type="submit" class="btn btn-default">查询</button>
									  </div>
								      
								</form>
								<table class="table table-striped table-cardSearch-finder">
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
                  <div class="tab-pane fade" id="finderSearch-elec">
					        
							
							<form action="">
							   
							          <div class="form-group">
										     <label for="elecfinderSearch-name">姓名:</label>
										     <input type="text" class="form-control" id="elecfinderSearch-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
									    <label for="elecfinderSearch-brande">物品品牌:</label>
									    <input type="text" class="form-control" id="elecfinderSearch-brand" placeholder="">
									    
									  </div>
									  <div class="form-group">
									    <label for="elecfinderSearch-time">拾到时间:</label>
									    <input type="text" class="form-control" id="elecfinderSearch-time" placeholder="">
									    
									  </div>
									  <div class="form-group forum-text">
							    
									    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
									  </div>
							          <button type="submit"  class="btn btn-default">查询</button>
							
							</form>
				  
				  		
							
							
							
				  </div>
				  
				  <!-- 日常用品类 -->
				  <div class="tab-pane fade" id="finderSearch-day">
					        
							
							<form action="">
							   
							          <div class="form-group">
										     <label for="dayfinderSearch-name">姓名:</label>
										     <input type="text" class="form-control" id="dayfinderSearch-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
									    <label for="dayfinderSearch-time">拾到时间:</label>
									    <input type="text" class="form-control" id="dayfinderSearch-time" placeholder="">
									    
									  </div>
									  <div class="form-group forum-text">
							    
									    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
									  </div>
							          <button type="submit"  class="btn btn-default">查询</button>
							
							</form>
				  
				  		
							
							
							
				  </div>
				  
				  <!-- 包类 -->
				  <div class="tab-pane fade" id="finderSearch-pack">
					        
							
							<form action="">
							   
							          <div class="form-group">
										     <label for="packfinderSearch-name">姓名:</label>
										     <input type="text" class="form-control" id="packfinderSearch-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
									    <label for="packfinderSearch-time">拾到时间:</label>
									    <input type="text" class="form-control" id="packfinderSearch-time" placeholder="">
									    
									  </div>
									  <div class="form-group forum-text">
							    
									    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
									  </div>
							          <button type="submit"  class="btn btn-default">查询</button>
							
							</form>
				  
				  		
							
							
							
				  </div>
				  
				  <!-- 配饰类 -->
				  <div class="tab-pane fade" id="finderSearch-orna">
					        
							
							<form action="">
							   
							          <div class="form-group">
										     <label for="ornafinderSearch-name">姓名:</label>
										     <input type="text" class="form-control" id="ornafinderSearch-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
									    <label for="ornafinderSearch-time">拾到时间:</label>
									    <input type="text" class="form-control" id="ornafinderSearch-time" placeholder="">
									    
									  </div>
									  <div class="form-group forum-text">
							    
									    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
									  </div>
							          <button type="submit"  class="btn btn-default">查询</button>
							
							</form>
				  
				  		
							
							
							
				  </div>
				  
				  <!-- 其它 -->
				  <div class="tab-pane fade" id="finderSearch-other">
					        
							
							<form action="">
							   
							          <div class="form-group">
										     <label for="otherfinderSearch-name">姓名:</label>
										     <input type="text" class="form-control" id="otherfinderSearch-name" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
										     <label for="otherfinderSearch-product">拾到的物品名称:</label>
										     <input type="text" class="form-control" id="otherfinderSearch-product" placeholder="">
									  </div>
									  <div class="form-group">
									    <label for="otherfinderSearch-time">拾到时间:</label>
									    <input type="text" class="form-control" id="otherfinderSearch-time" placeholder="">
									    
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
        
		    $('#finderseaCards').on('change', function(){
		    	  var val = $(this).val();
		    	  switch(val){
		    	  case '-1': $('#finderSearch-cards1,#finderSearch-cards2, #finderSearch-cards3,#finderSearch-cards4').hide();  break;
		    	  case '0': $('#finderSearch-cards1').show(); $('#finderSearch-cards2, #finderSearch-cards3,#finderSearch-cards4').hide(); break;
		    	  case '1': $('#finderSearch-cards2').show(); $('#finderSearch-cards1, #finderSearch-cards3,#finderSearch-cards4').hide(); break;
		    	  case '2': $('#finderSearch-cards3').show(); $('#finderSearch-cards2, #finderSearch-cards1,#finderSearch-cards4').hide(); break;
		    	  case '3': $('#finderSearch-cards4').show(); $('#finderSearch-cards2, #finderSearch-cards3,#finderSearch-cards1').hide(); break;
		    	  }
		    	});
    
    
    
    </script>
  </body>
  </html>