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
    <title>视频列表</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <script src="../js/jquery-3.6.0.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
<div style="text-align: center; margin-top: 50px;">
    <h3>视频列表</h3>
</div>

<div style="margin-top: 30px;">
    <div class="row">
        <div class="col-md-10"></div>
        <div class="col-md-2">
            <a href="${pageContext.request.contextPath}/admin/video_add.jsp">添加视频</a>
        </div>
    </div>
</div>


<div class="container" style="text-align: center; margin-top: 50px;">

    <table class="table table-striped table-bordered table-hover">
        <tr>
            <td>序号</td>
            <td>姓名</td>
            <td>账号</td>
            <td>性别</td>
            <td>学号</td>
            <td>操作</td>
        </tr>
        <tr>
            <td>1</td>
            <td>张无忌</td>
            <td>zhangwuji</td>
            <td>男</td>
            <td>NO-001</td>
            <td>
                <a class="btn btn-info btn-xs" href="#">明细</a>
                <a class="btn btn-warning btn-xs" href="#">修改</a>
                <a class="btn btn-danger btn-xs" href="#">删除</a>
            </td>
        </tr>
    </table>

</div>
</body>
</html>