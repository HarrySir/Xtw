
/*表单校验*/
function checkForm(){
	//得到用户输入的信息
	var accountEle = document.getElementById("account");
	var passwordEle = document.getElementById("password");
	var account = accountEle.value;
	var password = passwordEle.value;
	
	//判断账号是否为空
	if(account.length == 0){
		//提示用户
		alert("账号不能为空");
		//聚焦
		accountEle.focus();
		return false;
	}
	else if(password.length == 0){	//判断密码是否为空
		alert("密码不能为空");
		accountEle.focus();
		return false;
	}
	else{
		save();
		return true;
	}
}

/*为密码加密，返回加密后的字符串*/
function encoding(password) {
	var passwordArray = password.split("");
	var encodingPassword = "";
	for(var i = passwordArray.length-1; i >= 0; i--) {
		encodingPassword = encodingPassword + passwordArray[i];
	}
	return encodingPassword;
}

/*把用户名和密码存放到localStorage中*/
function save() {	
	var accountElement = document.getElementById("account");
	var passwordElement = document.getElementById("password");
	//得到用户输入的账号
	var account = accountElement.value;
	//得到用户输入的密码
	var password = passwordElement.value;
	if(account.length != 0 && password.length != 0){
		//保存账号
		localStorage.setItem("account", account);
		//加密
		password = encoding(password);
		//设置到输入框
		passwordElement.value = password;
		//保存密码
		localStorage.setItem("password", password);
	}
}