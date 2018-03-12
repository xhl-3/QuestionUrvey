<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>问券调查</title>
    <script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
</head>
<body>
<div>
    <span>姓名：</span><input type="text" name="user" id="user-name">
    <p>问题1：1+1=？</p>
    <input type="radio" name="answer" value="1">1<br>
    <input type="radio" name="answer" value="2">2<br>
    <input type="radio" name="answer" value="3">3<br>
    <input type="button" name="提交" id="submit" onclick="save()" style="width:100px;" value="提交">
</div>
</body>
<script>
    $(function(){

    });

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
