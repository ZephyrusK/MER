<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"
	var="ctx"></c:set>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
<title>iHealth Electronic Case System</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" href="${ctx}/assets/css/amazeui.min.css" />
<link rel="stylesheet" href="${ctx}/assets/css/login.css" />
<script src="${ctx}/assets/js/jquery.min.js"></script>


</head>
<body class="login_bj" >
<div class="zhuce_body">
<h1>电子病历系统</h1>
    <div class="zhuce_kong login_kuang">
    	<div class="zc">
        	<div class="bj_bai">
            <h3>登录</h3>
			<form method="post" action="${ctx}/main/login.do" class="am-form">
				<input name="name" type="text" class="kuang_txt" placeholder="用户名">
                <input name="password" type="password" class="kuang_txt" placeholder="密码">
                <div>
               		<a href="../password/forgetPwd1.html">忘记密码？</a>
               		<input name="" type="checkbox" value="" checked><span>记住我</span> 
                </div>
                <input name="登 录" type="submit" class="btn_zhuce" value="登录">
                
			</form>
			</div>
        	<div class="bj_right">
                <br><p class="denglushenfen">请选择您的登录身份</p>
                <label><input id="radio1" type="radio" name="identify" style="position:absolute; top:115px; left:310px" value="医生" ></label>
                <p class="yslogin">医生登录</p>
                <label><input id="radio2" type="radio" name="identify" style="position:absolute; top:155px; left:310px" value="患者" ></label>
                <p class="hzlogin">患者登录</p>
                <br><p style="position:absolute; top:188px; left:300px; ">没有账号？<a href="#">立即注册</a></p>
            </div>
        </div>
       
    </div>

</div>
  
</body>
</html>