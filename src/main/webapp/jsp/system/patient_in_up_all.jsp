<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>

<script type="text/javascript">
	reloadjs('${ctx}/assets/js/jquery.min.js');
	reloadjs('${ctx}/assets/js/amazeui.min.js');
	(function($){
		$("#insertSave").on("click", function() {
			$.ajax({
				type : 'post',
				url : '${ctx}/patient/insertOrUpdate.do',
				data : $('#PatientForm').serialize(),
				success : function(data){
					$("#main-content").html(data);
				}
			});
		});		
	})(jQuery);
	
</script>
<div class="am-modal-hd"style="padding:0px;background-color: rgba(0,180,242,.75);">病人基本信息编辑
	 <a href="javascript: void(0)" class="am-close am-close-spin"	data-am-modal-close>&times;</a>
</div>
<div class="am-modal-bd">
	<form method="post" id="PatientForm" class="am-form am-form-horizontal">
		<fieldset>
			<input type="hidden" name="patientID" value="${detaile.patientID}">
			<input type="hidden" name="basicID" value="${detaile.basicID}">
			<input type="hidden" name="contactID" value="${detaile.contactID}">
			<input type="hidden" name="workID" value="${detaile.workID}">
			<input type="hidden" name="otherID" value="${detaile.otherID}">
			<input type="hidden" name="effectiveNot" value="1">
			<div style="text-align: center;"><h4 style="margin-bottom:0px;!inportant;">基础资料</h4></div>
			<div class="am-panel-bd">
				<div class="am-g">
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">姓名：</div>
							<div class="am-u-lg-8">
								<input type="text" name="name" class="tpl-form-input" value="${detaile.name}">
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">性别:</div>
							<div class="am-u-lg-8">
								<select name="sex" id="sex">
									<option value="">-----请选择-----</option>
									<option value="0" ${0 eq detaile.sex ? "selected='selected'":""}>女</option>
									<option value="1" ${1 eq detaile.sex ? "selected='selected'":""}>男</option>
								</select>
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">血型:</div>
							<div class="am-u-lg-8">
								<select name="blood" id="blood">
									<option>-----请选择-----</option>
									<option value="1" ${1 eq detaile.blood ? "selected='selected'":""}>A型</option>
									<option value="2" ${2 eq detaile.blood ? "selected='selected'":""}>B型</option>
									<option value="3" ${3 eq detaile.blood ? "selected='selected'":""}>AB型</option>
									<option value="4" ${4 eq detaile.blood ? "selected='selected'":""}>O型</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				<div class="am-g">
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">年龄:</div>
							<div class="am-u-lg-8">
								<input type="text" name="age" class="tpl-form-input" value="${detaile.age}">
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">身高/CM：</div>
							<div class="am-u-lg-8">
								<input type="text" name="height" class="tpl-form-input" value="${detaile.height}">
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">体重/KG：</div>
							<div class="am-u-lg-8">
								<input type="text" name="weight" class="tpl-form-input" value="${detaile.weight}">
							</div>
						</div>
					</div>
				</div>
				<div class="am-g">
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">国籍：</div>
							<div class="am-u-lg-8">
								<input type="text" name="nationality" class="tpl-form-input" value="${detaile.nationality}">
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">籍贯：</div>
							<div class="am-u-lg-8">
								<input type="text" name="origin" class="tpl-form-input" value="${detaile.origin}">									
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">民族：</div>
							<div class="am-u-lg-8">
								<input type="text" name="nation" class="tpl-form-input" value="${detaile.nation}">
							</div>
						</div>
					</div>
				</div>
				<div class="am-g">
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">出生日期:</div>
							<div class="am-u-lg-8">
								<input type="text" name="birthdate"
										class="tpl-form-no-bg tpl-form-input" data-am-datepicker readonly 
										value="<fmt:formatDate value="${detaile.birthdate}" type="date" pattern="yyyy-MM-dd" />">								
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">出生地:</div>
							<div class="am-u-lg-8">
								<input type="text" name="birthplace" class="tpl-form-input" value="${detaile.birthplace}">
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">身份证：</div>
							<div class="am-u-lg-8">
								<input type="text" name="idcard" class="tpl-form-input" value="${detaile.idcard}">
							</div>
						</div>
					</div>
				</div>
				<div class="am-g" style="margin-bottom: 0px;!important">
					<div class="am-u-lg-4">
						<div class="am-g" style="margin-bottom: 0px;!important">
							<div class="am-u-lg-4">婚姻状况:</div>
							<div class="am-u-lg-8">
								<select name="marital" id="marital">
									<option>-----请选择-----</option>
									<option value="1" ${1 eq detaile.marital ? "selected='selected'":""}>未婚</option>
									<option value="2" ${2 eq detaile.marital ? "selected='selected'":""}>已婚</option>
									<option value="3" ${3 eq detaile.marital ? "selected='selected'":""}>离异</option>
								</select>
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g" style="margin-bottom: 0px;!important">
							<div class="am-u-lg-4">文化程度:</div>
							<div class="am-u-lg-8">
								<select name="culture" id="culture">
									<option value="">-----请选择-----</option>
									<c:forEach items="${academic}" var="item">
										<option value="${item.academicID}" 
										${item.academicID eq detaile.culture ? "selected='selected'":""}>${item.academicName}</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>
					<div class="am-u-lg-4"></div>
				</div>
			</div>
			<div style="text-align: center;"><h4 style="margin-bottom:0px;!inportant;">联系方式</h4></div>
			<div class="am-panel-bd">
				<div class="am-g">
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">家庭住址：</div>
							<div class="am-u-lg-8">
								<input type="text" name="homeAddress" class="tpl-form-input" value="${detaile.homeAddress}">
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">手机:</div>
							<div class="am-u-lg-8">
								<input type="text" name="telephone" class="tpl-form-input" value="${detaile.telephone}">
							</div>
						</div>
					</div>
					<div class="am-u-lg-4"></div>
				</div>
				<div class="am-g">					
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">固定电话：</div>
							<div class="am-u-lg-8">
								<input type="text" name="mobilePhone" class="tpl-form-input" value="${detaile.mobilePhone}">
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">Email：</div>
							<div class="am-u-lg-8">
								<input type="text" name="email" class="tpl-form-input" value="${detaile.email}">
							</div>
						</div>
					</div>
					<div class="am-u-lg-4"></div>
				</div>
				<div class="am-g">
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">联系人姓名：</div>
							<div class="am-u-lg-8">
								<input type="text" name="contactName" class="tpl-form-input" value="${detaile.contactName}">
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">关系：</div>
							<div class="am-u-lg-8">
								<select name="relationship" id="relationship">
									<option>-----请选择-----</option>
									<option value="1" ${1 eq detaile.relationship ? "selected='selected'":""}>父子</option>
									<option value="2" ${2 eq detaile.relationship ? "selected='selected'":""}>父女</option>
									<option value="3" ${3 eq detaile.relationship ? "selected='selected'":""}>母子</option>
									<option value="4" ${4 eq detaile.relationship ? "selected='selected'":""}>母女</option>
									<option value="5" ${5 eq detaile.relationship ? "selected='selected'":""}>其他亲属</option>
									<option value="6" ${6 eq detaile.relationship ? "selected='selected'":""}>其他关系</option>
								</select>
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">联系人住址：</div>
							<div class="am-u-lg-8">
								<input type="text" name="contactAddress" class="tpl-form-input" value="${detaile.contactAddress}">
							</div>
						</div>
					</div>
				</div>
				<div class="am-g" style="margin-bottom:0px;!inportant;">
					<div class="am-u-lg-4">
						<div class="am-g" style="margin-bottom:0px;!inportant;">
							<div class="am-u-lg-4">联系人手机:</div>
							<div class="am-u-lg-8">
								<input type="text" name="contactTelephone" class="tpl-form-input" value="${detaile.contactTelephone}">
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g" style="margin-bottom:0px;!inportant;">
							<div class="am-u-lg-4">固定电话:</div>
							<div class="am-u-lg-8">
								<input type="text" name="contactMobilePhone" class="tpl-form-input" value="${detaile.contactMobilePhone}">
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g" style="margin-bottom:0px;!inportant;">
							<div class="am-u-lg-4">Email：</div>
							<div class="am-u-lg-8">
								<input type="text" name="contactEmail" class="tpl-form-input" value="${detaile.contactEmail}">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div style="text-align: center;"><h4 style="margin-bottom:0px;!inportant;">工作资料</h4></div>
			<div class="am-panel-bd">
				<div class="am-g">
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">职业：</div>
							<div class="am-u-lg-8">
								<input type="text" name="occupation" class="tpl-form-input" value="${detaile.occupation}">
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">单位名称:</div>
							<div class="am-u-lg-8">
								<input type="text" name="unitName" class="tpl-form-input" value="${detaile.unitName}">
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">单位电话:</div>
							<div class="am-u-lg-8">
								<input type="text" name="unitTelephone" class="tpl-form-input" value="${detaile.unitTelephone}">
							</div>
						</div>
					</div>
				</div>
				<div class="am-g" style="margin-bottom:0px;!inportant;">
					<div class="am-u-lg-4">
						<div class="am-g" style="margin-bottom:0px;!inportant;">
							<div class="am-u-lg-4">单位地址:</div>
							<div class="am-u-lg-8">
								<input type="text" name="unitAddress" class="tpl-form-input" value="${detaile.unitAddress}">
							</div>
						</div>
					</div>
					<div class="am-u-lg-4"></div>
					<div class="am-u-lg-4"></div>
				</div>
			</div>
			<div style="text-align: center;"><h4 style="margin-bottom:0px;!inportant;">其他信息</h4></div>
			<div class="am-panel-bd">
				<div class="am-g">
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">计费类型：</div>
							<div class="am-u-lg-8">
								<select name="chargeTypeID" id="chargeTypeID">
									<option value="">-----请选择-----</option>
									<c:forEach items="${chargetype}" var="item">
										<option value="${item.chargeTypeID}" 
										${item.chargeTypeID eq detaile.chargeTypeID ? "selected='selected'":""}>${item.chargeTypeName}</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">医保号:</div>
							<div class="am-u-lg-8">
								<input type="text" name="medicalNum" class="tpl-form-input" value="${detaile.medicalNum}">
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">随访号:</div>
							<div class="am-u-lg-8">
								<input type="text" name="followNum" class="tpl-form-input" value="${detaile.followNum}">
							</div>
						</div>
					</div>
				</div>
				<div class="am-g">
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">军人:</div>
							<div class="am-u-lg-8">
								<input type="radio" name="soldiers" value="1" ${1 eq detaile.soldiers ? "checked":""}>是　　　
								<input type="radio" name="soldiers" value="2" ${2 eq detaile.soldiers ? "checked":""}>否　
							</div>
						</div>
					</div>
					<div class="am-u-lg-4">
						<div class="am-g">
							<div class="am-u-lg-4">军兵种：</div>
							<div class="am-u-lg-8">
								<input type="text" name="arms" class="tpl-form-input" value="${detaile.arms}">
							</div>
						</div>
					</div>
					<div class="am-u-lg-4"></div>
				</div>
			</div>
			<div style="text-align: center;">
				<button type="button" id="insertSave"
					class="am-btn am-btn-primary am-radius" data-am-modal-close>保存</button>
				<button type="button" class="am-btn am-btn-primary am-radius" data-am-modal-close>退出</button>
			</div>
		</fieldset>
	</form>
</div>