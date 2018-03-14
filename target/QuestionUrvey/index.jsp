<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>问券调查</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css"  media="all">
    <script src="<%=request.getContextPath()%>/js/jquery.min.js" charset="utf-8"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js" charset="utf-8"></script>
    <style>
        .question_f{
            margin-top:50px;
            margin-bottom:50px;
        }

    </style>
</head>
<body>
<div  style="width:400px;height:400px;margin-top:50px;margin-left:100px;">

<form method="post" action="/saveAnswer.do" onsubmit="return ">
    <div >
        <div class="form-group">
            <label for="name">姓名：</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="Enter name">
        </div>
        <div class="form-group">
            <label for="phone">手机号：</label>
            <input type="text" class="form-control" name="phone" id="phone" placeholder="Enter phone">
        </div>
    </div>
    <div class="question_f">
        <label  id="question1" >问题1：每月花费多少元玩游戏？</label>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="money" id="exampleRadios1" value="0-100">
            <label class="form-check-label" for="exampleRadios1">
               0-100
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="money" id="exampleRadios2" value="101-1000">
            <label class="form-check-label" for="exampleRadios2">
                101-1000
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="money" id="exampleRadios3" value="1000-10000">
            <label class="form-check-label" for="exampleRadios3">
                1000-10000
            </label>
        </div>
    </div>
    <div class="question_f">
        <label  id="question2" >问题2：最近玩什么类型的游戏？</label>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="type" id="type1" value="角色扮演">
            <label class="form-check-label" for="type1">
                角色扮演
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="type" id="type2" value="冒险类">
            <label class="form-check-label" for="type2">
                冒险类
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="type" id="type3" value="休闲类">
            <label class="form-check-label" for="type3">
                休闲类
            </label>
        </div>
    </div>




    <button type="submit" class="btn btn-primary">立即提交</button>
</form>
</div>
</body>
<script>
    function save(){
        var answer = $("input[type='radio']:checked").val();
        var name=$("#user-name").val();
        $.ajax({
            //几个参数需要注意一下
            type: "POST",//方法类型
            url: "/saveAnswer.do" ,//url
            data: {
                "name":name,
                "answer":answer
            },
            success: function (result) {
                    alert(result.success);
            },
            error : function() {
                alert("异常！");
            }
        });
    }

</script>
</html>
