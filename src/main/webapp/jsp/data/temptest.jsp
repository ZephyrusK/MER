<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript">

    var options = {
        chart: {
            renderTo: 'container',
            type: 'spline'
        },
        series: [{}]
    };

    $.getJSON('data.json', function(data) {
        options.series[0].data = data;
        var chart = new Highcharts.Chart(options);
    });

</script>
<div id="container"></div>
<pre id="data">[
[1,12],
[2,5],
[3,18],
[4,13],
[5,7],
[6,4],
[7,9],
[8,10],
[9,15],
[10,22]
]</pre>
