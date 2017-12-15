<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" scope="page" value="${pageContext.request.contextPath}"></c:set>
<script type="text/javascript">
	$('#testdata').DataTable({

	});
</script>

    <div>检查报告<br></div>
<div class="widget am-cf" >
<div class="widget-head am-cf">
	<div class="widget-title am-fl">待审核工单</div>
	<div class="widget-function am-fr">
		<a href="javascript:;" class="am-icon-cog"></a>
	</div>
</div>
<table style="width: 100%"
	class="am-table am-table-striped am-table-bordered am-table-compact"
	id="table-workorder-wait">
	<!-- class="am-table am-table-bordered am-table-striped am-table-hover" -->
	<thead>
		<tr>

			<th style="width: 50%">工单名称</th>
			<th style="width: 25%">收单人</th>
			<th style="width: 25%">回单时间</th>

		</tr>
	</thead>

</table>
<hr>
<div   class="row" style="text-align: center;">
	<button type="button" class="am-btn am-btn-primary">审核通过</button>
	<button type="button" class="am-btn am-btn-primary">审核不通过</button>
</div>
</div>
<div class="widget am-cf" >
<div class="widget-head am-cf">
	<div class="widget-title am-fl">任务基本信息</div>
	<div class="widget-function am-fr">
		<a href="javascript:;" class="am-icon-cog"></a>
	</div>
	</div>
	<form method="post" class="am-form am-form-horizontal">
					<fieldset style="margin-bottom: 0;">

						<div class="am-form-group">
							<label for="doc-ipt-3" class="am-u-sm-4 am-u-md-2 am-form-label">任务名称</label>
							<div class="am-u-sm-8 am-u-md-4">
								<div class="am-u-sm-10">
									<input type="text" id="doc-ipt-3" placeholder="输入任务名称">
								</div>
							</div>
							<label for="doc-ipt-４" class="am-u-sm-4 am-u-md-2 am-form-label">任务类型</label>
							<div class="am-u-sm-8 am-u-md-4">
								<div class="am-u-sm-10">
									<select>
										<option value="a">测试</option>
									</select>
								</div>
							</div>
						</div>
						<div class="am-form-group">
							<label for="doc-ipt-3" class="am-u-sm-4 am-u-md-2 am-form-label">启动时间</label>
							<div class="am-u-sm-8 am-u-md-4">
								<div class="am-u-sm-10">
									<input type="text" class="am-form-field" placeholder="启动时间"
										data-am-datepicker readonly required />

								</div>
							</div>
							<label for="doc-ipt-４" class="am-u-sm-4 am-u-md-2 am-form-label">结束时间</label>
							<div class="am-u-sm-8 am-u-md-4">
								<div class="am-u-sm-10">
									<input type="text" class="am-form-field tpl-form-no-bg"
										placeholder="结束时间" data-am-datepicker="">
								</div>
							</div>
						</div>
						<div class="am-form-group">
							<label for="doc-ipt-3" class="am-u-sm-2 am-form-label">任务内容</label>
							<div class="am-u-sm-10">
								<textarea class="" rows="5" id="user-intro" placeholder="请输入内容"></textarea>

							</div>
						</div>
						<div class="am-form-group">
							<label for="doc-ipt-3" class="am-u-sm-2 am-form-label">附件路经</label>
							<div class="am-u-sm-10">
								<input type="text" >

							</div>
						</div>
					</fieldset>
				</form>
</div>

<div class="widget am-cf" >
<div class="widget-head am-cf">
	<div class="widget-title am-fl">此任务产生的工单信息</div>
	<div class="widget-function am-fr">
		<a href="javascript:;" class="am-icon-cog"></a>
	</div>
</div>
<div   class="row" style="text-align: right;">
	<button type="button" class="am-btn">导出</button>
	
</div>
<table style="width: 100%"
	class="am-table am-table-striped am-table-bordered am-table-compact"
	id="table-workorder-detail">
	<!-- class="am-table am-table-bordered am-table-striped am-table-hover" -->
	<thead>
		<tr>

			<th style="width: 20%">派单说明</th>
			<th style="width: 10%">派单人</th>
			<th style="width: 10%">收单人</th>
			<th style="width: 10%">回单时间</th>
			<th style="width: 10%">回单内容</th>
			<th style="width: 10%">工单状态</th>
　　　　　　　<th style="width: 10%">短信提醒次数</th>
　　　　　　　<th style="width: 10%">附件</th>
		</tr>
	</thead>

</table>

</div>

<script type="text/javascript">
	reloadjs("${ctx}/assets/js/amazeui.min.js");
</script>


