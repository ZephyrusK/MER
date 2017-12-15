<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"
	var="ctx"></c:set>

<div class="row-content am-cf">
	<div class="row">
		<div class="am-u-sm-12 am-u-md-12 am-u-lg-12 am-g"
			style="padding-top:30px;">
			<div class="widget am-cf">
				<div class="widget-head am-cf">
					<div class="widget-title am-fl">医嘱编辑：</div>
				</div>
				<div class="am-tabs" data-am-tabs>
					<ul class="am-tabs-nav am-nav am-nav-tabs">
						<li class="am-active"><a href="#tab1">医嘱</a></li>
						<li><a href="#tab2">草药</a></li>
					</ul>
					<div class="am-tabs-bd">
						<div class="am-tab-panel am-fade am-in am-active" id="tab1">
							<div class="widget-body  widget-body-lg am-fr">
								<table class="am-table am-table-compact am-table-bordered tpl-table-black "id="example-r">
									<thead>
										<tr>
											<th>长期</th>
											<th>开始日期</th>
											<th>类别</th>
											<th>医嘱内容</th>
											<th>规格</th>
											<th>剂量</th>
											<th>途径</th>
											<th>频率</th>
											<th>单位</th>
											<th>医生说明</th>
											<th>总量</th>
											<th>医生</th>
										</tr>
									</thead>
									<tbody>
										<tr class="gradeX">
											<td>Amaze</td>
											<td>张鹏飞</td>
											<td>2016-09-26</td>
											<td>Amaze</td>
											<td>张鹏飞</td>
											<td>2016-09-26</td>
											<td>Amaze</td>
											<td>张鹏飞</td>
											<td>2016-09-26</td>
											<td>Amaze</td>
											<td>张鹏飞</td>
											<td>2016-09-26</td>
										</tr>
									</tbody>
								</table>
							</div>
							<button type="button" class="am-btn am-btn-primary am-radius"
								data-am-modal="{target: '#Insert'}">新增</button>
							<button type="button" class="am-btn am-btn-primary am-radius"
								data-am-modal="{target: '#Update'}">修改</button>
							<button type="button" class="am-btn am-btn-primary am-radius">删除</button>
						</div>
						<div class="am-tab-panel am-fade" id="tab2">
							<div class="widget-body  widget-body-lg am-fr">
								<table class="am-table am-table-compact am-table-bordered tpl-table-black "	id="example-r">
									<thead>
										<tr>
											<th>长期</th>
											<th>开始日期</th>
											<th>类别</th>
											<th>医嘱内容</th>
											<th>规格</th>
											<th>剂量</th>
											<th>途径</th>
											<th>频率</th>																						
											<th>单位</th>
											<th>医生说明</th>
											<th>剂数</th>
											<th>医生</th>
										</tr>
									</thead>
									<tbody>
										<tr class="gradeX">
											<td>Amaze UI 模式窗口</td>
											<td>张鹏飞</td>
											<td>2016-09-26</td>
											<td>Amaze</td>
											<td>张鹏飞</td>
											<td>2016-09-26</td>
											<td>Amaze</td>
											<td>张鹏飞</td>
											<td>2016-09-26</td>
											<td>Amaze</td>
											<td>张鹏飞</td>
											<td>2016-09-26</td>
										</tr>
									</tbody>
								</table>
							</div>
							<button type="button" class="am-btn am-btn-primary am-radius"
								data-am-modal="{target: '#Insert'}">新增</button>
							<button type="button" class="am-btn am-btn-primary am-radius"
								data-am-modal="{target: '#Update'}">修改</button>
							<button type="button" class="am-btn am-btn-primary am-radius">删除</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>