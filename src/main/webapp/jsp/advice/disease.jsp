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
    	
		/* $.ajax({
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
		});  */
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
					  		记录时间：2017-12-01　记录医生: 赵子云
						</div>
					  	<br>
					  	<div class="row" style="text-align:center;background-color:rgba(0,180,242,.25)">病历信息</div>
				 		<div class="am-g">
						  <div class="am-u-sm-2" style="text-align: right;">主诉</div>
						  <div class="am-u-sm-10">右上腹疼痛2月，加重伴黄疸10天。</div>
						</div>
						<div class="am-g">
						  <div class="am-u-sm-2">现病史</div>
						  <div class="am-u-sm-10">入院前2月患者不明原因出现右上腹疼痛不适，为隐痛，能忍受，无放射痛及牵涉痛，无恶心呕吐，无发热、
						  畏寒及腹胀、腹泻等，遂到当地医院治疗，给予输液（具体不详）后仍疼痛稍轻。10天左右右上腹疼痛加重，为持续性疼痛，伴黄疸，无发热、畏寒，予抗炎等。
						  治疗后疼痛无缓解。为求进一步诊治，今来我院诊治，门诊以"腹痛原因"收入我科。病后精神，睡眠差，饮食减少，大便未见异常，小便色黄。</div>
						</div>
						<div class="am-g">
						  <div class="am-u-sm-2">既往史</div>
						  <div class="am-u-sm-10">无肝炎、结核、伤寒病史；无外伤手术；无药物及食物过敏史；免疫接种史不详；无糖尿病、冠心病史及高血压史，无输血史。</div>
						</div>
						<div class="am-g">
						  <div class="am-u-sm-2">个人史</div>
						  <div class="am-u-sm-10">出生地：广东    曾到过：未到过疫区久住   吸烟史：2年，每日1支，戒烟0年    饮酒：5年   其他：无异常</div>
						</div>
						<div class="am-g">
						  <div class="am-u-sm-2">家族史</div>
						  <div class="am-u-sm-10">否认家族中有遗传病、传染病患者。</div>
						</div>
						<div class="am-g" style="height: 70px;">
						  <div class="am-u-sm-2">体格检查 </div>
						  <div class="am-u-sm-10">体温36.5度  脉搏：64次/分  呼吸：21次/分  血压：120/70mmHg
						  </div>
						</div>
						<div class="am-g" style="height: 70px;">
						  <div class="am-u-sm-2">专科检查</div>						
						  <div class="am-u-sm-10">皮肤巩膜重度黄染。腹平，未见肠型蠕动波及腹壁静脉曲张。右上腹部压痛明显，有反跳痛及轻度肌紧张。腹部其余部位无压痛及反跳痛。
						肝浊音界存在，肝区、双肾区无叩击痛。移动性浊音，肠鸣音4次/分，未闻及异常血管杂音。						  	
						  </div>
						</div>
						<div class="am-g" style="height: 70px;">
						  <div class="am-u-sm-2">辅助检查</div>
						  <div class="am-u-sm-10">CT考虑胆囊癌并肝脏浸犯可能，胆囊结石；肝内多发结石，转移代排；胆系扩张，总胆管占位可疑；腹膜后多发肿大淋巴结；少量腹水，
						  外援腹部B超显示：结石性胆囊炎。
						  </div>
						</div>
						
						<div class="am-g" style="height: 70px;">
						  <div class="am-u-sm-2">诊断信息</div>
						  <div class="am-u-sm-10">腹痛原因：1、胆囊癌；2、慢性结石性胆囊炎急性发作
						  	<textarea  rows="1" id="user-intro" style="color:black;"></textarea>
						  </div>
						</div>				
						<table class="am-table am-table-bordered am-table-centered">
							<thead>
								<tr>
									<th>诊断医生类型</th>
									<th>病类型</th>
									<th>医生签字</th>
									<th>诊断日期</th>
								</tr>
							</thead>
							<tbody>
								<tr class="am-active">
									<td>住院医生</td>
									<td>胆囊癌</td>
									<td>宋海亮</td>
									<td>2017-12-01</td>
								</tr>
								<tr class="am-active">
									<td>上级医生</td>
									<td>胆囊癌</td>
									<td>赵子云</td>
									<td>2017-12-01</td>
								</tr>
								<tr class="am-active">
									<td>无</td>
									<td>无</td>
									<td>无</td>
									<td>无</td>
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
