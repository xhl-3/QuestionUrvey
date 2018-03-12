<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>登录页面</title>
    <script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
</head>
<body>
<div style="width:300px;height:300px;margin:0 auto;margin-top:100px;">
    <form action="/login.do" method="post">
        登录名：<input style="margin-bottom:20px;" type="text" name="name" ><br/>
        密码：<input style="margin-bottom:20px;" type="password" name="passwd" ><br/>
        <input type="submit" value="登陆" >
    </form>
</div>
</body>
</html>
