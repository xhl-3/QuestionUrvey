<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>统计结果</title>
    <script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
    <script src='<%=request.getContextPath()%>/js/jquery.easyui.min.js'></script>
</head>
<body>
<div>
    <div><table id="resultTable"></table></div>
</div>
</body>
<script>
    $(function () {
        $('#resultTable').datagrid({
            url:'/getData.do',
            columns:[[
                {field:'allUser',title:'总人数',width:100},
                {field:'rightUser',title:'答对的人数',width:100},
                {field:'errorUser',title:'答错的人数',width:100,align:'right'}
            ]]
        });
    });

</script>
</html>
