<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>第一个 Highcharts 图表</title>
</head>
<body>
    <!-- 图表容器 DOM -->
    <div id="container" style="width: 1200px;height:600px;margin-bottom:30px;"></div>
    <div id="container1" style="width: 1200px;height:600px;"></div>
    <!-- 引入 highcharts.js -->
    <script src="https://img.hcharts.cn/jquery/jquery-1.8.3.min.js"></script>
    <script src="https://img.hcharts.cn/highcharts/highcharts.js"></script>
    <script src="https://img.hcharts.cn/highcharts/highcharts-more.js"></script>
    <script>
        // 图表配置
        var options = {
            chart: {
                type: 'column'//指定图表的类型，默认是折线图（line）
            },
            title: {
                text: '健康报告'                 // 标题
            },
            xAxis: {
                categories: ['心率', '血压','呼吸','体温']   // x 轴分类
            },
            yAxis: {
                title: {
                    text: '数值'                // y 轴标题
                }
            },
            series: [{                              // 数据列
                name: '标准低值',                        // 数据列名
                data: [60, 90, 16,36.1]                     // 数据
            }, {
                name: '患者',
                data: [65, 110, 20,36.8]
            },{
                name: '标准值高值',
                data: [100, 140, 20,37.2]
        }]
        };
        // 图表初始化函数
        var chart = Highcharts.chart('container', options);
         var options = {
            chart: {
                type: 'spline'                          //指定图表的类型，默认是折线图（line）
            },
            title: {
                text: '心率统计'                 // 标题
            },
            xAxis: {
                categories: ['1月', '2月', '3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']   // x 轴分类
            },
            yAxis: {
                title: {
                    text: '数值'                // y 轴标题
                }
            },
            series: [{                              // 数据列
                name: '患者',                        // 数据列名
                data: [67, 70, 72,87,70,77,74,89,{y:103,color:'#ff0000'},87,84,70]                     // 数据
            }]
        };
        // 图表初始化函数
        var chart = Highcharts.chart('container1', options);


    </script>
</body>
</html>
