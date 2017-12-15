<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>
<link rel="stylesheet" href="${ctx}/assets/css/zTreeStyle/zTreeStyle.css" type="text/css"></link>
<script type="text/javascript" src="${ctx}/assets/js/jquery.ztree.all.js"></script>
<script type="text/javascript">
   var zTreeObj;
   // zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
   var setting = {
	   callback: {
			onClick: zTreeOnClick
		}
   };	
   // zTree 的数据属性，深入使用请参考 API 文档（zTreeNode 节点数据详解）
   var zNodes ='${treejson}';
   $(document).ready(function(){
      zTreeObj = $.fn.zTree.init($("#treeDemo"), setting, $.parseJSON(zNodes));
   });
   
    function zTreeOnClick(event, treeId, treeNode) {
    	var month=(treeNode.getParentNode().name <9 )? "0"+ treeNode.getParentNode().name :treeNode.getParentNode().name;
    	var day = (treeNode.name < 9) ? "0" + treeNode.name : treeNode.name;
    	var recordTime=treeNode.getParentNode().getParentNode().name + "-" + month + "-" + day;
    	
		 $.ajax({
			type : 'post',
			url : '${ctx}/patientInfo/diseaseContent.do',
			data: { "recordTime" : recordTime},//参数
			success : function(data) {				
				var obj=document.getElementById("checkItemID"); 
				$(obj).empty();
				for(var i=0; i<data.length; i++){
					 
					 obj.add(new Option(data[i].checkItemName,data[i].checkItemID));  //动态绑定下拉框  ---检查项目
				}
			} 
		});  
	};
</script>

<style type="text/css">
.am-u-sm-2{
text-align: right;
}
#user-intro{
	padding:0px;!important;
	border:0px;
}
</style>

<div style="padding-left: 10px;">
	<div class="widget am-cf">
		<div class="widget-head am-cf">
			<div class="widget-title am-fl">既往病程</div>
		</div>
		<div class="widget-body am-fr">
			<form class="am-form tpl-form-border-br">
				<fieldset>
					<div class="am-g">
					  <div class="am-u-sm-3">					  
					  		<ul id="treeDemo" class="ztree"></ul>					  		
					  </div>
					  <div class="am-u-sm-9" style="border: 1px solid;color:black;">
					  	<div class="row" style="text-align:center;background-color:rgba(0,180,242,.95)">
					  		记录时间：2990-01-01　记录医生: 韦医生
						</div>
					  	<br>
					  	<div class="row" style="text-align:center;background-color:rgba(0,180,242,.25)">病历信息</div>
				 		<div class="am-g">
						  <div class="am-u-sm-2" style="text-align: right;">主诉:</div>
						  <div class="am-u-sm-10"></div>
						</div>
						<div class="am-g">
						  <div class="am-u-sm-2">现病史:</div>
						  <div class="am-u-sm-10"></div>
						</div>
						<div class="am-g">
						  <div class="am-u-sm-2">既往史:</div>
						  <div class="am-u-sm-10"></div>
						</div>
						<div class="am-g">
						  <div class="am-u-sm-2">个人史:</div>
						  <div class="am-u-sm-10"></div>
						</div>
						<div class="am-g">
						  <div class="am-u-sm-2">家族史:</div>
						  <div class="am-u-sm-10"></div>
						</div>
						<div class="am-g" style="height: 70px;">
						  <div class="am-u-sm-2">体格检查</div>
						  <div class="am-u-sm-10">
						  	<textarea rows="3" id="user-intro" style="color:black;"></textarea>
						  </div>
						</div>
						<div class="am-g" style="height: 70px;">
						  <div class="am-u-sm-2">专科检查:</div>
						  <div class="am-u-sm-10">
						  	<textarea rows="3" id="user-intro" style="color:black;"></textarea>
						  </div>
						</div>
						<div class="am-g" style="height: 70px;">
						  <div class="am-u-sm-2">辅助检查:</div>
						  <div class="am-u-sm-10">
						  	<textarea  rows="3" id="user-intro" style="color:black;"></textarea>
						  </div>
						</div>
						<div class="row" style="text-align:center;background-color:rgba(0,180,242,.25)">诊断信息</div>
						<table class="am-table am-table-bordered am-table-centered">
							<thead>
								<tr>
									<th>诊断</th>
									<th>类型</th>
									<th>确诊人</th>
									<th>诊断日期</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Amaze UI</td>
									<td>http://amazeui.org</td>
									<td>http://amazeui.org</td>
									<td>2012-10-01</td>
								</tr>
								<tr>
									<td>Amaze UI</td>
									<td>http://amazeui.org</td>
									<td>http://amazeui.org</td>
									<td>2012-10-01</td>
								</tr>
								<tr class="am-active">
									<td>Amaze UI</td>
									<td>http://amazeui.org</td>
									<td>http://amazeui.org</td>
									<td>2012-10-01</td>
								</tr>
							</tbody>
						</table>
					  </div>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>
