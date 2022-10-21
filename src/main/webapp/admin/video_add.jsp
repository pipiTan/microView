<%--
  Created by IntelliJ IDEA.
  User: zaintan
  Date: 2022/10/15
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>视频添加</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <script src="../js/jquery-3.6.0.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/My97DatePicker/WdatePicker.js"></script>

</head>
<body>
<div class="container" style="text-align: center; margin-top: 50px;">
    <div style="text-align: center; margin-top: 50px;">
        <h3>用户登录</h3>
    </div>
    <form class="form-horizontal" action="${pageContext.request.contextPath}/adminAddVideo" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">视频名称:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="name" name="name" placeholder="请输入视频名称">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">视频类型:</label>
            <div class="col-sm-10">
                <select class="form-control" name="type">
                    <option value="0">=请选择=</option>
                    <option value="1">亚洲</option>
                    <option value="2">日本</option>
                    <option value="3">无码</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="author" class="col-sm-2 control-label">作者（导演）:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="author" name="author" placeholder="请输入作者（导演）">
            </div>
        </div>
        <div class="form-group">
            <label for="timeSize" class="col-sm-2 control-label">时长（分钟）:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="timeSize" name="timeSize" placeholder="请输入时长（分钟）">
            </div>
        </div>
        <div class="form-group">
            <label for="uriPath" class="col-sm-2 control-label">视频:</label>
            <div class="col-sm-10">
                <input type="file" class="form-control" id="uriPath" name="uriPath">
            </div>
        </div>
        <div class="form-group">
            <label for="description" class="col-sm-2 control-label">视频描述:</label>
            <div class="col-sm-10">
                <textarea id="description" name="description" style="resize: none;" class="form-control" rows="5" placeholder="随便留下点什么吧..."></textarea>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="text-align: center">
                <input class="btn btn-success" type="submit" value="添加"/>
                <input class="btn btn-info" style="margin-left: 20px" type="reset" value="重置"/>
                <input class="btn btn-default" style="margin-left: 20px" type="reset" value="返回" onclick="history.back()"/>
            </div>
            <div class="col-md-4"></div>
        </div>
    </form>
</div>

</body>
</html>
