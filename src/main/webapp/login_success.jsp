<%--
  Created by IntelliJ IDEA.
  User: zaintan
  Date: 2022/10/14
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户登录成功</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="js/jquery-3.6.0.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
<div class="container" style="text-align: center; margin-top: 50px;">
    <h3>欢迎你, ${sessionScope.user.name} , 登录成功</h3>
</div>

</body>
</html>