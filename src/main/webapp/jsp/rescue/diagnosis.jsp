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
					<div class="widget-title am-fl">诊断编辑：</div>
				</div>
				<div class="widget-body am-fr">
					<form class="am-form tpl-form-border-form tpl-form-border-br">
						<div class="am-scrollable-horizontal">
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
								</tbody>
							</table>
							<button type="button" class="am-btn am-btn-primary am-radius"
								data-am-modal="{target: '#Insert'}">新增</button>
							<button type="button" class="am-btn am-btn-primary am-radius"
								data-am-modal="{target: '#Update'}">修改</button>
							<button type="button" class="am-btn am-btn-primary am-radius">删除</button>
						</div>
					</form>
				</div>
			</div>
			<!-- 新增诊断 -->
			<div class="am-popup" id="Insert">
				<div class="am-popup-inner">
					<div class="am-panel am-panel-primary">
						<div class="am-panel-hd">新增诊断</div>
						<div class="am-panel-bd">
							<div class="am-g">
								<div class="am-u-sm-4">诊断</div>
								<div class="am-u-sm-8">
									<input type="text" class="tpl-form-input" id="user-name"
										placeholder="请输入个人史文字">
								</div>
							</div>
						</div>
						<div class="am-panel-bd">
							<div class="am-g">
								<div class="am-u-sm-4">诊断类型</div>
								<div class="am-u-sm-8">
									<input type="text" class="tpl-form-input" id="user-name"
										placeholder="请输入个人史文字">
								</div>
							</div>
						</div>
						<div class="am-panel-bd">
							<div class="am-g">
								<div class="am-u-sm-4">确诊人</div>
								<div class="am-u-sm-8">
									<input type="text" class="tpl-form-input" id="user-name"
										placeholder="请输入个人史文字">
								</div>
							</div>
						</div>
						<div class="am-panel-bd">
						  <div class="am-g">
                            <div class="am-u-sm-4">发布时间</div>
                            <div class="am-u-sm-8">
                                <input type="text" class="tpl-form-no-bg tpl-form-input" placeholder="发布时间" data-am-datepicker="">
                            </div>
                          </div>
                        </div>

						<button type="button" class="am-btn am-btn-primary am-radius">添加</button>
						<button type="button" class="am-btn am-btn-primary am-radius">取消</button>
					</div>
				</div>
			</div>
			<!-- 修改诊断 -->
			<div class="am-popup" id="Update">
				<div class="am-popup-inner">
					<div class="am-panel am-panel-primary">
						<div class="am-panel-hd">修改诊断</div>
						<div class="am-panel-bd">
							<div class="am-g">
								<div class="am-u-sm-4">诊断</div>
								<div class="am-u-sm-8">
									<input type="text" class="tpl-form-input" id="user-name"
										placeholder="请输入个人史文字">
								</div>
							</div>
						</div>
						<div class="am-panel-bd">
							<div class="am-g">
								<div class="am-u-sm-4">诊断类型</div>
								<div class="am-u-sm-8">
									<input type="text" class="tpl-form-input" id="user-name"
										placeholder="请输入个人史文字">
								</div>
							</div>
						</div>
						<div class="am-panel-bd">
							<div class="am-g">
								<div class="am-u-sm-4">确诊人</div>
								<div class="am-u-sm-8">
									<input type="text" class="tpl-form-input" id="user-name"
										placeholder="请输入个人史文字">
								</div>
							</div>
						</div>
						<div class="am-panel-bd">
						  <div class="am-g">
                            <div class="am-u-sm-4">发布时间</div>
                            <div class="am-u-sm-8">
                                <input type="text" class="tpl-form-no-bg tpl-form-input" placeholder="发布时间" data-am-datepicker="">
                            </div>
                          </div>
                        </div>

						<button type="button" class="am-btn am-btn-primary am-radius">添加</button>
						<button type="button" class="am-btn am-btn-primary am-radius">取消</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
