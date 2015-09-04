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
            <div class="col-xs-12 col-sm-9 funcmain">
              
              <div class="forum-content">
                <div class="forum-category-wrapper">
                  <div class="forum-heading">
                    <h3>发布失物信息</h3>
                  </div>
                  <div class="thread-list">
                                  <ul id="myTab" class="nav nav-tabs ">
											   <li class="active">
											      <a href="#loserPub-cards" data-toggle="tab">卡类</a></li>
											   <li><a href="#loserPub-elec" data-toggle="tab">电子产品类</a></li>
											   <li><a href="#loserPub-day" data-toggle="tab">日常用品类</a></li>
											   <li><a href="#loserPub-pack" data-toggle="tab">包类</a></li>
											   <li><a href="#loserPub-orna" data-toggle="tab">配饰类</a></li>
											   <li><a href="#loserPub-other" data-toggle="tab">其它</a></li>
											   
							     </ul>
					   <div id="myTabContent" class="tab-content">
					
					           <div class="tab-pane fade in active" id="loserPub-cards">
										            <div class="form-group" >
													      <select class="form-control" id="loserpubCards">
													         <option value="-1">请选择卡类别</option>
													         <option value="0">银行卡</option>
													         <option value="1">餐卡</option>
													         <option value="2">身份证</option>
													         <option value="3">会员卡</option>
													      </select>
													</div>
													
													 
													<form class=" form-trans" id="loserPub-cards1" role="form" style="display:none;margin-top: 15px;">
													      <input type="hidden" value="银行卡" name="bankCard">
													      <div class="form-group">
														    <label for="loserPub-bank-card">银行卡:</label>
														    <input type="text" class="form-control" id="loserPub-bank-card" placeholder="请输入卡号">
														  </div>
														  <div class="form-group">
														    <label for="loserPub-bank-cardName">持卡人姓名:</label>
														    <input type="text" class="form-control" id="loserPub-bank-cardName" placeholder="">
														  </div>
														  <div class="form-group forum-text">
													    
														    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
														  </div>
														  <button type="button"  class="btn btn-default add">上传图片</button>
													          <div class="file-box" style="display:inline-block">
					 
															 <input type='text' name='textfield' id='textfield-findcards1' class='txt' style="width: 160px;height:34px;"/>  
															 <input type='button' class='btn ' value='浏览...' />
															 <input type="file" name="fileField" class="brow-file" id="fileField-findcards1" size="28" onchange="document.getElementById('textfield-findcards1').value=this.value" />
															 
															
														  </div>
												          <button type="submit"  class="btn btn-success pull-right">提交</button>
													      
													</form>
													
													<form class=" form-trans" id="loserPub-cards2" role="form" style="display:none;margin-top: 15px;">
													      <div class="form-group">
														    <label for="loserPub-meal-card">餐卡:</label>
														    <input type="text" class="form-control" id="loserPub-meal-card" placeholder="学院">
														  </div>
														  <div class="form-group">
														    <label for="loserPub-meal-cardName">姓名:</label>
														    <input type="text" class="form-control" id="loserPub-meal-cardName" placeholder="">
														  </div>
														  <div class="form-group forum-text">
													    
													    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
													  </div>
													  <button type="button"  class="btn btn-default add">上传图片</button>
												          <div class="file-box" style="display:inline-block">
					 
															 <input type='text' name='textfield' id='textfield-findcards2' class='txt' style="width: 160px;height:34px;"/>  
															 <input type='button' class='btn ' value='浏览...' />
															 <input type="file" name="fileField" class="brow-file" id="fileField-findcards2" size="28" onchange="document.getElementById('textfield-findcards2').value=this.value" />
															 
															
														  </div>
												          <button type="submit"  class="btn btn-success pull-right">提交</button>
													      
													</form>
													<form class=" form-trans" id="loserPub-cards3" role="form" style="display:none;margin-top: 15px;">
													      <div class="form-group">
														    <label for="loserPub-ide-card">身份证:</label>
														    <input type="text" class="form-control" id="loserPub-ide-card" placeholder="身份证号码">
														  </div>
														  <div class="form-group">
														    <label for="loserPub-ide-cardName">姓名:</label>
														    <input type="text" class="form-control" id="loserPub-ide-cardName" placeholder="">
														  </div>
														  <div class="form-group forum-text">
													    
													    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
													  </div>
													  <button type="button"  class="btn btn-default add">上传图片</button>
												          <div class="file-box" style="display:inline-block">
					 
															 <input type='text' name='textfield' id='textfield-findcards3' class='txt' style="width: 160px;height:34px;"/>  
															 <input type='button' class='btn ' value='浏览...' />
															 <input type="file" name="fileField" class="brow-file" id="fileField-findcards3" size="28" onchange="document.getElementById('textfield-findcards3').value=this.value" />
															 
															
														  </div>
												          <button type="submit"  class="btn btn-success pull-right">提交</button>
													      
													</form>
													<form class=" form-trans" id="loserPub-cards4" role="form" style="display:none;margin-top: 15px;">
													      
														  <div class="form-group">
														    <label for="loserPub-vip-cardName">会员卡:</label>
														    <input type="text" class="form-control" id="loserPub-vip-cardName" placeholder="姓名">
														  </div>
														  <div class="form-group forum-text">
													    
													    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
													  </div>
													  <button type="button"  class="btn btn-default add">上传图片</button>
												          <div class="file-box" style="display:inline-block">
					 
															 <input type='text' name='textfield' id='textfield-findcards4' class='txt' style="width: 160px;height:34px;"/>  
															 <input type='button' class='btn ' value='浏览...' />
															 <input type="file" name="fileField" class="brow-file" id="fileField-findcards4" size="28" onchange="document.getElementById('textfield-findcards4').value=this.value" />
															 
															
														  </div>
												          <button type="submit"  class="btn btn-success pull-right">提交</button>
													      
													</form>
													
										    </div>
					      
					   
					   
					   <!-- 电子产品类 -->
                                            
                                            <div class="tab-pane fade" id="loserPub-elec">
										        
												
												<form>
												          <div class="form-group">  
												                 <label for="select-loserelec">电子产品类别:</label>
													             <select class="form-control" id="select-loserelec">
														         <option value="11">请选择</option>
														         <option value="12"></option>
														         <option value="13"></option>
														         
													      </select>
												          </div>
												          <div class="form-group">
															     <label for="elecloserPub-name">姓名:</label>
															     <input type="text" class="form-control" id="elecloserPub-name" placeholder="请输入姓名">
														  </div>
														  
														  <div class="form-group">
														        <label for="elecloserPub-place">丢失时间:</label>
												                <div class='input-group date' >
												                    <input data-date-format="yyyy-mm-dd" type='text' class="form-control" id="elecloserPub-time" />
												                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
												                    </span>
												                </div>
														  
														  
														  </div>
												          
														  
														  <div class="form-group">
														    <label for="elecloserPub-place">丢失地点:</label>
														    <input type="text" class="form-control" id="elecloserPub-place" placeholder="">
														    
														  </div>
														  
														  
												          <div class="form-group">
														    <label for="elecloserPub-phone">电话:</label>
														    <input type="text" class="form-control" id="elecloserPub-phone" placeholder="">
														    
														  </div> 
														  <div class="form-group forum-text">
												    
														    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
														  </div>
												          <button type="button"  class="btn btn-default add">上传图片</button>
												          <div class="file-box" style="display:inline-block">
					 
															 <input type='text' name='textfield' id='textfield-findelec' class='txt' style="width: 160px;height:34px;"/>  
															 <input type='button' class='btn ' value='浏览...' />
															 <input type="file" name="fileField" class="brow-file" id="fileField-findelec" size="28" onchange="document.getElementById('textfield-findelec').value=this.value" />
															 
															
														  </div>
												          <button type="submit"  class="btn btn-success pull-right">提交</button>
												
												</form>
									  
									  		</div>
				  
				       <!-- 日常用品类 -->
				                            
				                            <div class="tab-pane fade" id="loserPub-day">
										        
												
												<form action="">
												          
												          <div class="form-group">  
												                 <label for="select-loserday">日用产品类别:</label>
													             <select class="form-control" id="select-loserday">
														         <option value="">请选择</option>
														         <option value=""></option>
														         <option value=""></option>
														         
													      </select>
												          </div>
												          
												          <div class="form-group">
															     <label for="dayloserPub-name">姓名:</label>
															     <input type="text" class="form-control" id="dayloserPub-name" placeholder="请输入姓名">
														  </div>
														  
														  <div class="form-group">
														  <label for="dayloserPub-time">丢失时间:</label>
												                <div class='input-group date' >
												                    <input type='text' class="form-control" id="dayloserPub-time"/>
												                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
												                    </span>
												                </div>
												          </div>
														  
														  <div class="form-group">
														    <label for="dayloserPub-place">丢失地点:</label>
														    <input type="text" class="form-control" id="dayloserPub-place" placeholder="">
														    
														  </div>
														  
														  <div class="form-group">
														    <label for="dayloserPub-phone">电话:</label>
														    <input type="text" class="form-control" id="dayloserPub-phone" placeholder="">
														    
														  </div>
														  
														  <div class="form-group forum-text">
												    
														    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
														  </div>
												          <button type="button"  class="btn btn-default add">上传图片</button>
												          <div class="file-box" style="display:inline-block">
					 
															 <input type='text' name='textfield' id='textfield-findday' class='txt' style="width: 160px;height:34px;"/>  
															 <input type='button' class='btn ' value='浏览...' />
															 <input type="file" name="fileField" class="brow-file" id="fileField-findday" size="28" onchange="document.getElementById('textfield-findday').value=this.value" />
															 
															
														  </div>
												          <button type="submit"  class="btn btn-success pull-right">提交</button>
												
												</form>
									  
									  		
											</div>
				                            
				  
				       <!-- 包类 -->
				                            
				                            <div class="tab-pane fade" id="loserPub-pack">
										        
												
												<form action="">
												          
												          <div class="form-group">  
												                 <label for="select-loserpack">包类类别:</label>
													             <select class="form-control" id="select-loserpack">
														         <option value="">请选择</option>
														         <option value=""></option>
														         <option value=""></option>
														         
													      </select>
												          </div>
												          
												          <div class="form-group">
															     <label for="packloserPub-name">姓名:</label>
															     <input type="text" class="form-control" id="packloserPub-name" placeholder="请输入姓名">
														  </div>
														  
														  <div class="form-group">
														  <label for="packloserPub-time">丢失时间:</label>
												                <div class='input-group date' >
												                    <input type='text' class="form-control" id="packloserPub-time"/>
												                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
												                    </span>
												                </div>
												          </div>
														  
														  <div class="form-group">
														    <label for="packloserPub-place">丢失地点:</label>
														    <input type="text" class="form-control" id="packloserPub-place" placeholder="">
														    
														  </div>
														  
														  <div class="form-group">
														    <label for="packloserPub-phone">电话:</label>
														    <input type="text" class="form-control" id="packloserPub-phone" placeholder="">
														    
														  </div>
														  
														  <div class="form-group forum-text">
												    
														    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
														  </div>
												          <button type="button"  class="btn btn-default add">上传图片</button>
												          <div class="file-box" style="display:inline-block">
					 
															 <input type='text' name='textfield' id='textfield-findpack' class='txt' style="width: 160px;height:34px;"/>  
															 <input type='button' class='btn ' value='浏览...' />
															 <input type="file" name="fileField" class="brow-file" id="fileField-findpack" size="28" onchange="document.getElementById('textfield-findpack').value=this.value" />
															 
															
														  </div>
												          <button type="submit"  class="btn btn-success pull-right">提交</button>
												
												</form>
									  
									  		
											</div>
				  
				       <!-- 配饰类 -->
				  
				                            <div class="tab-pane fade" id="loserPub-orna">
										        
												
												<form action="">
												          
												          <div class="form-group">  
												                 <label for="select-loserorna">配饰类别:</label>
													             <select class="form-control" id="select-loserorna">
														         <option value="">请选择</option>
														         <option value=""></option>
														         <option value=""></option>
														         
													      </select>
												          </div>
												          
												          <div class="form-group">
															     <label for="ornaloserPub-name">姓名:</label>
															     <input type="text" class="form-control" id="ornaloserPub-name" placeholder="请输入姓名">
														  </div>
														  
														  <div class="form-group">
														  <label for="ornaloserPub-place">丢失时间:</label>
												                <div class='input-group date' >
												                    <input type='text' class="form-control" id="ornaloserPub-place"/>
												                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
												                    </span>
												                </div>
												          </div>
														  
														  <div class="form-group">
														    <label for="ornaloserPub-place">丢失地点:</label>
														    <input type="text" class="form-control" id="ornaloserPub-place" placeholder="">
														    
														  </div>
														  
														  <div class="form-group">
														    <label for="ornaloserPub-phone">电话:</label>
														    <input type="text" class="form-control" id="ornaloserPub-phone" placeholder="">
														    
														  </div>
														  
														  <div class="form-group forum-text">
												    
														    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
														  </div>
												          <button type="button"  class="btn btn-default add">上传图片</button>
												          <div class="file-box" style="display:inline-block">
					 
															 <input type='text' name='textfield' id='textfield-findoran' class='txt' style="width: 160px;height:34px;"/>  
															 <input type='button' class='btn ' value='浏览...' />
															 <input type="file" name="fileField" class="brow-file" id="fileField-findorna" size="28" onchange="document.getElementById('textfield-findorna').value=this.value" />
															 
															
														  </div>
												          <button type="submit"  class="btn btn-success pull-right">提交</button>
												
												</form>
									  
									  		
											</div>
				                            
				       <!-- 其它 -->
				                            <div class="tab-pane fade" id="loserPub-other">
										        
												
												<form action="">
												   
												          <div class="form-group">
															     <label for="otherloserPub-name">姓名:</label>
															     <input type="text" class="form-control" id="otherloserPub-name" placeholder="请输入姓名">
														  </div>
														  <div class="form-group">
															     <label for="otherloserPub-product">丢失的物品名称:</label>
															     <input type="text" data-val="true" class="form-control" id="otherloserPub-product" placeholder="">
														  </div>
														  
														  <div class="form-group">
														  <label for="otherloserPub-time">丢失时间:</label>
												                <div class='input-group date' >
												                    <input type='text' class="form-control" id="otherloserPub-place"/>
												                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
												                    </span>
												                </div>
												          </div>
														  <div class="form-group">
														    <label for="otherloserPub-place">丢失地点:</label>
														    <input type="text" class="form-control" id="otherloserPub-place" placeholder="">
														    
														  </div>
														  
														  <div class="form-group">
														    <label for="otherloserPub-phone">电话:</label>
														    <input type="text" class="form-control" id="otherloserPub-phone" placeholder="">
														    
														  </div>
														  
														  <div class="form-group forum-text">
												    
														    <textarea class="form-control" placeholder="输入详细描述信息" rows="6"></textarea>
														  </div>
												          <button type="button"  class="btn btn-default add">上传图片</button>
												          <div class="file-box" style="display:inline-block">
					 
															 <input type='text' name='textfield' id='textfield-findother' class='txt' style="width: 160px;height:34px;"/>  
															 <input type='button' class='btn ' value='浏览...' />
															 <input type="file" name="fileField" class="brow-file" id="fileField-findother" size="28" onchange="document.getElementById('textfield-findother').value=this.value" />
															 
															
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
        
		    $('#loserpubCards').on('change', function(){
		    	  var val = $(this).val();
		    	  switch(val){
		    	  case '-1': $('#loserPub-cards1,#loserPub-cards2, #loserPub-cards3,#loserPub-cards4').hide();  break;
		    	  case '0': $('#loserPub-cards1').show(); $('#loserPub-cards2, #loserPub-cards3,#loserPub-cards4').hide(); break;
		    	  case '1': $('#loserPub-cards2').show(); $('#loserPub-cards1, #loserPubcards3,#loserPub-cards4').hide(); break;
		    	  case '2': $('#loserPub-cards3').show(); $('#loserPub-cards2, #loserPub-cards1,#loserPub-cards4').hide(); break;
		    	  case '3': $('#loserPub-cards4').show(); $('#loserPub-cards2, #loserPub-cards3,#loserPub-cards1').hide(); break;
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