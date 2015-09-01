/*获取request对象*/
function createXMLHttpRequest(){
	 		try {
			return new XMLHttpRequest();
		}
	 		catch (e) {
			try {
				return new ActiveXObject("Msxm12.XMLHTTP");
			} 
			catch (e) {
				try {
					return new ActiveXObject("Microsoft.XMLHTTP");
				}
				catch (e) {
					throw e;
				}
			}
		}
	 }


/*
 * 请求方式method, 
 * 请求的URLurl, 
 * 是否异步asyn, 
 * 请求体params, 
 * 回调函数callback,
 * 服务器响应数据转换成什么类型type
 * 封装成对象option
 */
function ajax(option){
	//1.得到xmlHttp
	var xmlHttp = createXMLHttpRequest();
	//如果没有指定请求方式，默认为get请求
	if(!option.method){
		option.method = "GET";
	}
	//默认为异步处理
	if(option.asyn == undefined){
		option.asyn = true;
	}
	//2.打开连接
	xmlHttp.open(option.method, option.url, option.asyn);
	//3.判断是否为post
	if("POST" == option.method){
		xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	}
	//4.发送请求
	xmlHttp.send(option.params);
	//5.注册监听
	xmlHttp.onreadystatechange = function(){
		if(xmlHttp.readyState == 4 && xmlHttp.status == 200){
			var data;
			//获取服务器的响应数据，进行转换
			if(!option.type){	//如果type没有赋值，那么默认为文本
				date = xmlHttp.responseText;
			}
			else if(option.type == "xml"){
				data = xmlHttp.responseXML;
			}
			else if(option.type == "text"){
				date = xmlHttp.responseText;
			}
			else if(option.type == "json"){
				var text = xmlHttp.responseText;
				data = eval("(" + text + ")");
			}
			//调用回调方法
			option.callback(data);
		}
	}
}







