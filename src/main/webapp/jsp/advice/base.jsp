<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>

<style type="text/css">
.am-table .ttbody>tr>td {
	border-top: 0px solid #ddd; ! important;
	vertical-align: inherit; ! important;
	text-align: right;
}

.am-table .ttbody>tr>td input[type=text] {
	border: 0px;
	border-bottom: #000000 1px solid;
	background-color: #fff;
}
</style>
<!-- Top(全部新增)-->
<div style="text-align: center;color:#000;background-color: rgba(0,180,242,.65);">病人基本信息
	<button type="button" class="am-fr" style="margin-right:40px;" onclick="openFrom('/patient/alltoaddupdate.do?patientID=${patientID}')"
		data-am-modal="{target: '#ffrom', closeViaDimmer: 0,dimmer:0, width: 1070, height: 1000}">全部编辑</button>
</div>
<br />
<!-- 基本资料 -->
<div class="am-u-sm-12">
	<form class="am-form tpl-form-border-br">
		<div class="am-panel am-panel-secondary">
			<div class="am-panel-hd" style="padding-top: 0px;padding-bottom: 0px;">基本资料
				<!-- <button type="button" class="am-fr"
					data-am-modal="{target: '#basicInsert', closeViaDimmer: 0,dimmer:0, width: 1000, height: 500}">单独编辑</button> -->
			</div>
			<table class="am-table">
				<tbody class="ttbody">
					<tr>
						<td>姓名</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.name}"></td>
						<td>性别</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${'0' == detaile.sex ? '女':'男'}">
						</td>
						<td>血型</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="<c:if test="${detaile.blood==1}">A型</c:if><c:if test="${detaile.blood==2}">B型</c:if><c:if test="${detaile.blood==3}">AB型</c:if><c:if test="${detaile.blood==4}">O型</c:if>">
						</td>
					</tr>
					<tr>
						<td>年龄</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.age}"></td>
						<td>身高</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.height}"></td>
						<td>体重</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.weight}"></td>
					</tr>
					<tr>
						<td>国籍</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.nationality}"></td>
						<td>籍贯</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.origin}"></td>
						<td>民族</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.nation}"></td>
					</tr>
					<tr>
						<td>出生日期</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="<fmt:formatDate value="${detaile.birthdate}" type="date" pattern="yyyy-MM-dd" />">
						</td>
						<td>出生地</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.birthplace}"></td>
						<td>身份证</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.idcard}"></td>
					</tr>
					<tr>
						<td>婚姻状况</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="<c:if test="${detaile.marital==1}">未婚</c:if><c:if test="${detaile.marital==2}">已婚</c:if><c:if test="${detaile.marital==3}">离异</c:if>">
						</td>
						<td>文化程度</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="<c:if test="${detaile.culture==1}">中专/高中</c:if><c:if test="${detaile.culture==2}">专科</c:if><c:if test="${detaile.culture==3}">专科</c:if><c:if test="${detaile.culture==4}">研究生</c:if><c:if test="${detaile.culture==5}">研究生</c:if><c:if test="${detaile.culture==6}">博士</c:if>">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>
</div>
<!-- 基本资料的新增窗体 -->
<div class="am-modal am-modal-no-btn" tabindex="-1" id="basicInsert"
	style="background-color: rgba(105,105,105,.6)">
	<div class="am-modal-dialog"
		style="margin-top: 50px;margin-left: 220px;">
		<div class="am-modal-hd"
			style="padding:0px;background-color: rgba(0,180,242,.75);">
			基本资料编辑 <a href="javascript: void(0)" class="am-close am-close-spin"
				data-am-modal-close>&times;</a>
		</div>
		<div class="am-modal-bd">
			<form method="post" class="am-form am-form-horizontal">
				<fieldset>
					<table class="am-table">
						<tbody>
							<tr>
								<td>姓名</td>
								<td><input type="text" class="tpl-form-input">
								</td>
								<td>性别</td>
								<td><select>
										<option>-----请选择-----</option>
										<option>女</option>
										<option>男</option>
								</select>
								</td>
								<td>血型</td>
								<td><select>
										<option>-----请选择-----</option>
										<option>测试一</option>
										<option>测试二</option>
								</select></td>
							</tr>
							<tr>
								<td>年龄</td>
								<td><input type="text" class="tpl-form-input">
								</td>
								<td>身高</td>
								<td><input type="text" class="tpl-form-input">
								</td>
								<td>体重</td>
								<td><input type="text" class="tpl-form-input">
								</td>
							</tr>
							<tr>
								<td>国籍</td>
								<td><input type="text" class="tpl-form-input"
									id="user-name">
								</td>
								<td>籍贯</td>
								<td><input type="text" class="tpl-form-input"
									id="user-name">
								</td>
								<td>民族</td>
								<td><input type="text" class="tpl-form-input"
									id="user-name">
								</td>
							</tr>
							<tr>
								<td>出生日期</td>
								<td><input type="text" class="tpl-form-input">
								</td>
								<td>出生地</td>
								<td><input type="text" class="tpl-form-input">
								</td>
								<td>身份证</td>
								<td><input type="text" class="tpl-form-input">
								</td>
							</tr>
							<tr>
								<td>婚姻状况</td>
								<td><select>
										<option>-----请选择-----</option>
										<option>未婚</option>
										<option>已婚</option>
										<option>离异</option>
								</select>
								</td>
								<td>文化程度</td>
								<td><select>
										<option>-----请选择-----</option>
										<option>测试一</option>
										<option>测试二</option>
								</select>
								</td>
							</tr>
						</tbody>
					</table>
					<div style="text-align: center;">
						<button type="button" class="am-btn am-btn-primary am-radius">保存</button>
						<button type="button" class="am-btn am-btn-primary am-radius">退出</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>

<!-- 联系方式 -->
<div class="am-u-sm-12">
	<form class="am-form tpl-form-border-br">
		<div class="am-panel am-panel-secondary">
			<div class="am-panel-hd" style="padding-top: 0px;padding-bottom: 0px;">联系方式
				<!-- <button type="button" class="am-fr"
					data-am-modal="{target: '#contactInsert', closeViaDimmer: 0,dimmer:0, width: 1000, height: 500}">单独编辑</button> -->
			</div>
			<table class="am-table">
				<tbody class="ttbody">
					<tr>
						<td>家庭住址</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.homeAddress}">
						</td>
						<td>手机</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.telephone}">
						</td>
					</tr>
					<tr>
						<td>固定电话</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.mobilePhone}">
						</td>
						<td>Email</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.email}">
						</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>联系人姓名</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.contactName}">
						</td>
						<td>关系</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="<c:if test="${detaile.relationship==1}">父子</c:if><c:if test="${detaile.relationship==2}">父女</c:if><c:if test="${detaile.relationship==3}">母子</c:if><c:if test="${detaile.relationship==4}">母女</c:if><c:if test="${detaile.relationship==5}">其他亲属</c:if><c:if test="${detaile.relationship==6}">其他关系</c:if>">
						</td>
						<td>联系人住址</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.contactAddress}">
						</td>
					</tr>
					<tr>
						<td>联系人手机</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.contactTelephone}"></td>
						<td>固定电话</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.contactMobilePhone}"></td>
						<td>Email</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.contactEmail}"></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>
</div>
<!-- 联系方式的新增窗体 -->
<div class="am-modal am-modal-no-btn" tabindex="-1" id="contactInsert"
	style="background-color: rgba(105,105,105,.6)">
	<div class="am-modal-dialog"
		style="margin-top: 50px;margin-left: 220px;">
		<div class="am-modal-hd"
			style="padding:0px;background-color: rgba(0,180,242,.75);">
			联系方式编辑 <a href="javascript: void(0)" class="am-close am-close-spin"
				data-am-modal-close>&times;</a>
		</div>
		<div class="am-modal-bd">
			<form method="post" class="am-form am-form-horizontal">
				<fieldset>
					<table class="am-table">
						<tbody>
							<tr>
								<td>家庭住址</td>
								<td><input type="text" class="tpl-form-input">
								</td>
								<td>住址邮编</td>
								<td><input type="text" class="tpl-form-input">
								</td>
							</tr>
							<tr>
								<td>手机</td>
								<td><input type="text" class="tpl-form-input">
								</td>
								<td>固定电话</td>
								<td><input type="text" class="tpl-form-input">
								</td>
								<td>Email</td>
								<td><input type="text" class="tpl-form-input">
								</td>
							</tr>
							<tr>
								<td>联系人姓名</td>
								<td><input type="text" class="tpl-form-input">
								</td>
								<td>关系</td>
								<td><select>
										<option>-----请选择-----</option>
										<option>测试一</option>
										<option>测试二</option>
								</select>
								</td>
							</tr>
							<tr>
								<td>联系人住址</td>
								<td><input type="text" class="tpl-form-input">
								</td>
								<td>住址邮编</td>
								<td><input type="text" class="tpl-form-input">
								</td>
							</tr>
							<tr>
								<td>联系人手机</td>
								<td><input type="text" class="tpl-form-input">
								</td>
								<td>固定电话</td>
								<td><input type="text" class="tpl-form-input">
								</td>
								<td>Email</td>
								<td><input type="text" class="tpl-form-input">
								</td>
							</tr>
						</tbody>
					</table>
					<div style="text-align: center;">
						<button type="button" class="am-btn am-btn-primary am-radius">保存</button>
						<button type="button" class="am-btn am-btn-primary am-radius">退出</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>

<!-- 单位资料 -->
<div class="am-u-sm-12">
	<form class="am-form tpl-form-border-br">
		<div class="am-panel am-panel-secondary">
			<div class="am-panel-hd" style="padding-top: 0px;padding-bottom: 0px;">单位资料
				<!-- <button type="button" class="am-fr"
					data-am-modal="{target: '#workInsert', closeViaDimmer: 0,dimmer:0, width: 1000, height: 500}">单独编辑</button> -->
			</div>
			<table class="am-table">
				<tbody class="ttbody">
					<tr>
						<td>职业</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.occupation}"></td>
						<td>单位名称</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.unitName}"></td>
						<td>单位电话</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.unitTelephone}"></td>
					</tr>
					<tr>
						<td>单位地址</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.unitAddress}">
						</td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>
</div>
<!-- 单位资料的新增窗体 -->
<div class="am-modal am-modal-no-btn" tabindex="-1" id="workInsert"
	style="background-color: rgba(105,105,105,.6)">
	<div class="am-modal-dialog"
		style="margin-top: 50px;margin-left: 220px;">
		<div class="am-modal-hd" style="padding:0px;background-color: rgba(0,180,242,.75);"> 
			单位资料编辑 <a href="javascript: void(0)" class="am-close am-close-spin"
				data-am-modal-close>&times;</a>
		</div>
		<div class="am-modal-bd">
			<form method="post" class="am-form am-form-horizontal">
				<fieldset>
					<table class="am-table">
						<tbody>
							<tr>
								<td>职业</td>
								<td><select>
										<option>-----请选择-----</option>
										<option>测试一</option>
										<option>测试二</option>
								</select>
								</td>
								<td>单位名称</td>
								<td><input type="text" class="tpl-form-input">
								</td>
								<td>单位电话</td>
								<td><input type="text" class="tpl-form-input">
								</td>
							</tr>
							<tr>
								<td>单位地址</td>
								<td><input type="text" class="tpl-form-input">
								</td>
								<td>单位邮编</td>
								<td><input type="text" class="tpl-form-input">
								</td>
							</tr>
						</tbody>
					</table>
					<div style="text-align: center;">
						<button type="button" class="am-btn am-btn-primary am-radius">保存</button>
						<button type="button" class="am-btn am-btn-primary am-radius">退出</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>

<!-- 其他信息 -->
<div class="am-u-sm-12">
	<form class="am-form tpl-form-border-br">
		<div class="am-panel am-panel-secondary">
			<div class="am-panel-hd" style="padding-top: 0px;padding-bottom: 0px;">其他信息
				<!-- <button type="button" class="am-fr"
					data-am-modal="{target: '#otherInsert', closeViaDimmer: 0,dimmer:0, width: 1000, height: 500}">单独编辑</button> -->
			</div>
			<table class="am-table">
				<tbody class="ttbody">
					<tr>
						<td>计费类型</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.chargeTypeID eq 1 ? '省医保':''}${detaile.chargeTypeID eq 2 ? '市医保':''}${detaile.chargeTypeID eq 3 ? '全保':''}${detaile.chargeTypeID eq 4 ? '无医保':''}">
						</td>
						<td>医保号</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.medicalNum}">
						</td>
						<td>随访号</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.followNum}">
						</td>
					</tr>
					<tr>
						<td>军人</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${'1' == detaile.soldiers ? '是':'否'}">
						</td>
						<td>军兵种</td>
						<td><input type="text" class="tpl-form-input" readonly
							value="${detaile.arms}">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>
</div>
<!-- 其他信息的新增窗体 -->
<div class="am-modal am-modal-no-btn" tabindex="-1" id="otherInsert"
	style="background-color: rgba(105,105,105,.6)">
	<div class="am-modal-dialog"
		style="margin-top: 50px;margin-left: 220px;">
		<div class="am-modal-hd"
			style="padding:0px;background-color: rgba(0,180,242,.75);">
			其他信息编辑 <a href="javascript: void(0)" class="am-close am-close-spin"
				data-am-modal-close>&times;</a>
		</div>
		<div class="am-modal-bd">
			<form method="post" class="am-form am-form-horizontal">
				<fieldset>
					<table class="am-table">
						<tbody>
							<tr>
								<td>计费类型</td>
								<td><select>
										<option>-----请选择-----</option>
										<option>测试一</option>
										<option>测试二</option>
								</select>
								</td>
								<td>医保号</td>
								<td><input type="text" class="tpl-form-input">
								</td>
								<td>随访号</td>
								<td><input type="text" class="tpl-form-input">
								</td>
							</tr>
							<tr>
								<td>军人</td>
								<td><input type="radio" name="doc-radio-1" value="option1">是
									<input type="radio" name="doc-radio-1" value="option2" checked>否
								</td>
								<td>军兵种</td>
								<td><select>
										<option>-----请选择-----</option>
										<option>测试一</option>
										<option>测试二</option>
								</select>
								</td>
							</tr>
						</tbody>
					</table>
					<div style="text-align: center;">
						<button type="button" class="am-btn am-btn-primary am-radius">保存</button>
						<button type="button" class="am-btn am-btn-primary am-radius">退出</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>
