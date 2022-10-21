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
    <title>用户注册</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="js/jquery-3.6.0.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/My97DatePicker/WdatePicker.js"></script>
    <script>

        function validate() {
            if ($("#account").val()=="") {
                alert("账户不能为空")
                return false
            }
            if ($("#password").val()=="") {
                alert("密码不能为空")
                return false
            }
            if ($("#repassword").val()=="") {
                alert("确认密码不能为空")
                return false
            }
            if ($("#password").val()!=$("#repassword").val()) {
                alert("两次密码不一致")
                $("#password").val("")
                $("#repassword").val("")
                $("#password")[0].focus()
                return false
            }
            // 手机验证
            if(!(/^1[3-9]\d{9}$/.test($("#phone").val()))) {
               alert("手机格式不正确")
                $("#phone").val("")
                $("#phone")[0].focus()
                return false
             }

            // 邮箱验证
            if(!/^(.+)@(.+)$/.test($("#email").val())) {
                alert("电子邮件地址必须包括 ( @ 和 . )")
                $("#email").val("")
                $("#email")[0].focus()
                return false
            }
            if($("#birthday").val()=="") {
                alert("出生日期不能为空")
                return false
            }
            // 是否成年
            const birthday = $("#birthday").val().split("-")
            const date = new Date()
            //console.log(birthday)
            dy = date.getFullYear() - birthday[0]
            dm = date.getMonth() + 1 - birthday[1]
            dd = date.getDate() - birthday[2]
           // console.log(dy,dm,dd)
            if (!(dy > 18 || (dy === 18 && dm > 0) || (dy === 18 && dm ===0 && dd >= 0))) {
                alert("我们是绿色健康的网站，请未成年人自觉回避")
                $("#birthday").val("")
                $("#birthday").focus()
                return false
            }
            return true
        }

    </script>
</head>
<body>
<div class="container" style="text-align: center; margin-top: 50px;">
    <div style="text-align: center; margin-top: 50px;">
        <h3>用户登录</h3>
    </div>
    <form class="form-horizontal" action="${pageContext.request.contextPath}/register" method="post" onsubmit="return validate()">
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">姓名:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="name" name="name" placeholder="请输入姓名">
            </div>
        </div>
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
            <label for="repassword" class="col-sm-2 control-label">确认密码:</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="repassword" placeholder="请再次输入密码">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">性别:</label>
            <div class="col-sm-10">
                <label class="radio-inline">
                    <input type="radio" name="gender" id="male" value="true" checked="checked">男
                </label>
                <label class="radio-inline">
                    <input type="radio" name="gender" id="female" value="false">女
                </label>
                <label class="radio-inline">
                    <input type="radio" name="gender" id="agender" value="false">无性别
                </label>
                <label class="radio-inline">
                    <input type="radio" name="gender" id="Bigender" value="false">中性
                </label>
                <label class="radio-inline">
                    <input type="radio" name="gender" id="male-female" value="false">偏男两性人
                </label>
                <label class="radio-inline">
                    <input type="radio" name="gender" id="female-male" value="false">偏女两性人
                </label>
            </div>
        </div>
        <div class="form-group">
            <label for="phone" class="col-sm-2 control-label">手机号码:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入手机号码">
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="col-sm-2 control-label">Email:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="email" name="email" placeholder="请输入电子邮箱">
            </div>
        </div>
        <div class="form-group">
            <label for="birthday" class="col-sm-2 control-label">出生日期:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="birthday" name="birthday" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd'})"  placeholder="请输入出生日期" readonly="readonly">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">兴趣:</label>
            <div class="col-sm-10">
                <label class="checkbox-inline">
                    <input type="checkbox" id="interest1" name="interest" value="1" checked="checked">编程
                </label>
                <label class="checkbox-inline">
                    <input type="checkbox" id="interest2" name="interest" value="2">音乐
                </label>
                <label class="checkbox-inline">
                    <input type="checkbox" id="interest3" name="interest" value="3">美食
                </label>
                <label class="checkbox-inline">
                    <input type="checkbox" id="interest4" name="interest" value="4">电影
                </label>
                <label class="checkbox-inline">
                    <input type="checkbox" id="interest5" name="interest" value="5">游戏
                </label>
                <label class="checkbox-inline">
                    <input type="checkbox" id="interest6" name="interest" value="6">旅游
                </label>
                <label class="checkbox-inline">
                    <input type="checkbox" id="interest7" name="interest" value="7">运动
                </label>
                <label class="checkbox-inline">
                    <input type="checkbox" id="interest8" name="interest" value="8">阅读
                </label>
                <label class="checkbox-inline">
                    <input type="checkbox" id="interest9" name="interest" value="9">学习
                </label>
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="col-sm-2 control-label">籍贯:</label>
            <div class="col-sm-10">
                <select class="form-control" name="birthplace">
                    <option value="0">=请选择=</option>
                    <option value="1">南京</option>
                    <option value="2">镇江</option>
                    <option value="3">常州</option>
                    <option value="4">无锡</option>
                    <option value="5">苏州</option>
                    <option value="6">扬州</option>
                    <option value="7">南通</option>
                    <option value="8">宿迁</option>
                    <option value="9">淮安</option>
                    <option value="10">泰州</option>
                    <option value="11">盐城</option>
                    <option value="12">徐州</option>
                    <option value="13">连云港</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="introduction" class="col-sm-2 control-label">自我介绍:</label>
            <div class="col-sm-10">
                <textarea id="introduction" name="introduction" style="resize: none;" class="form-control" rows="5" placeholder="随便留下点什么吧..."></textarea>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="text-align: center">
                <input class="btn btn-success" type="submit" value="提交"/>
                <input class="btn btn-info" style="margin-left: 20px" type="reset" value="重置"/>
            </div>
            <div class="col-md-4"></div>
        </div>
    </form>
</div>

</body>
</html>
