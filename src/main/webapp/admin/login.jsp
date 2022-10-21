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
    <title>管理员登录</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <script src="../js/jquery-3.6.0.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
<div style="text-align: center; margin-top: 50px;">
    <h3>管理员登录</h3>
</div>



<div class="container" style="margin-top: 50px">
        <form class="form-horizontal" action="${pageContext.request.contextPath}/adminLogin" method="post">
        <div class="form-group">
            <label for="account" class="col-sm-2 control-label">账号:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="account" name="account" placeholder="请输入账号">
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-2 control-label">密码:</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码">
            </div>
        </div>
      <div class="form-group">
        <div class="col-md-4"></div>
        <div class="col-md-4" style="text-align: center">
          <input class="btn btn-success" type="submit" value="登录"/>
          <input class="btn btn-info" style="margin-left: 20px" type="reset" value="重置"/>
        </div>
        <div class="col-md-4"></div>
      </div>
</form>
</div>
</body>
</html>