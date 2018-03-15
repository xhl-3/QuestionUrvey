<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>统计结果</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css"  media="all">
    <script src="<%=request.getContextPath()%>/js/jquery.min.js" charset="utf-8"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js" charset="utf-8"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap-table.js" charset="utf-8"></script>

    <script src="<%=request.getContextPath()%>/js/bootstrap-talbe-export.js" charset="utf-8"></script>
    <script src="<%=request.getContextPath()%>/js/table-export.js" charset="utf-8"></script>
    <script src="<%=request.getContextPath()%>/js/ga.js" charset="utf-8"></script>
</head>
<body>
<div>
    <button type="button" id="download" style="margin:20px;float: right;" id="btn_download" class="btn btn-primary" onClick ="$('#resultTable').tableExport({ type: 'excel', escape: 'false' })">数据导出</button>
    <div><table id="resultTable"></table></div>
</div>
</body>
<script  type="text/javascript">
    $(function () {
        //初始化Table
        $("#resultTable").bootstrapTable({
            url: '/getData.do',         //请求后台的URL（*）
            method: 'post',                      //请求方式（*）
            //toolbar: '#toolbar',                //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: false,                   //是否显示分页（*）
            sortable: false,                     //是否启用排序
            sortOrder: "asc",                   //排序方式
            dataType: "json",
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber: 1,                       //初始化加载第一页，默认第一页
            pageSize: 10,                       //每页的记录行数（*）
            pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
            strictSearch: true,
            clickToSelect: true,                //是否启用点击选中行
            initExport:true,//仅初始化时注册一次导出按钮click事件  刷新时需设置为false
            howExport: true,    //是否显示导出
            xportDataType: "basic",            //basic', 'all', 'selected'.
            columns: [{
                field: 'user_name',
                title: '用户'
            }, {
                field: 'phone_num',
                title: '手机号'
            }, {
                field: 'question_desc',
                title: '问题'
            }, {
                field: 'answer',
                title: '答案'
            },  {
                field: 'create_time',
                title: '创建时间'
            },]
        });
    });

</script>
</html>
