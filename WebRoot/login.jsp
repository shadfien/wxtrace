<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
  <head>
   
    
    <title>login.jsp</title>
    
	

  </head>
  
  <body>
    This is my JSP page. <br>    
     <div class="login-pic">
        	<div class="container">
            	<div class="row">
                	<div class="login-conter col-lg-5 col-lg-offset-7 col-md-7 col-md-offset-5">
                    	<ul class="login-list">
                        	<form action="login.action" method="post">
                                <li><span>企业用户名：</span><input type="text" name="user.name" id="username" placeholder="输入您的帐号" value="输入您的帐号" onfocus="if(value=='输入您的帐号') {value=''}" onblur="if (value=='') {value='输入您的帐号'}"></li>
                                <li><span>登录密码：</span><input type="password" name="user.password" id="password"  placeholder="输入您的密码" value="输入您的密码" onfocus="if(value=='输入您的密码') {value=''}" onblur="if (value=='') {value='输入您的密码'}"></li>
                                <li class="no-pad"><input class="bginput animate" type="submit" name="dosubmit" value="登 录"></li>
                            </form>
                        </ul>
                    </div>
                </div>
            </div>
            </div>
  </body>
</html>
