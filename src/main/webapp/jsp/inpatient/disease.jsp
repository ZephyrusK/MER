<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"
	var="ctx"></c:set>

<div class="row-content am-cf">
	<div class="row">
		<div class="am-u-sm-12 am-u-md-12 am-u-lg-12"
			style="padding-top:30px;">
			<div class="widget am-cf">
				<div class="widget-head am-cf">
					<div class="widget-title am-fl">边框表单</div>
					<div class="widget-function am-fr">
						<a href="javascript:;" class="am-icon-cog"></a>
					</div>
				</div>
				<div class="widget-body am-fr">
					<form class="am-form tpl-form-border-form tpl-form-border-br">
						<fieldset>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">标题
									<span class="tpl-form-line-small-title">Title</span> </label>
								<div class="am-u-sm-9">
									<input type="text" class="tpl-form-input" id="user-name"
										placeholder="请输入标题文字"> <small>请填写标题文字10-20字左右。</small>
								</div>
							</div>

							<div class="am-form-group">
								<label for="user-email" class="am-u-sm-3 am-form-label">发布时间
									<span class="tpl-form-line-small-title">Time</span> </label>
								<div class="am-u-sm-9">
									<input type="text" class="am-form-field tpl-form-no-bg"
										placeholder="发布时间" data-am-datepicker="">
									<small>发布时间为必填</small>
								</div>
							</div>

							<div class="am-form-group">
								<label for="user-phone" class="am-u-sm-3 am-form-label">作者</label>
								<div class="am-u-sm-9">
									<select data-am-selected="{searchBox: 1}">
										<option value="a">-The.CC</option>
										<option value="b">夕风色</option>
										<option value="o">Orange</option>
									</select>

								</div>
							</div>						

							<div class="am-form-group">
								<label class="am-u-sm-3 am-form-label">SEO关键字 <span
									class="tpl-form-line-small-title">SEO</span> </label>
								<div class="am-u-sm-9">
									<input type="text" placeholder="输入SEO关键字">
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-weibo" class="am-u-sm-3 am-form-label">添加分类
									<span class="tpl-form-line-small-title">Type</span> </label>
								<div class="am-u-sm-9">
									<input type="text" id="user-weibo" placeholder="请添加分类用点号隔开">
									<div></div>
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="user-intro" class="am-u-sm-3 am-form-label">文章内容</label>
								<div class="am-u-sm-9">
									<textarea class="" rows="10" id="user-intro"
										placeholder="请输入文章内容"></textarea>
								</div>
							</div>
							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<button type="button"
										class="am-btn am-btn-primary tpl-btn-bg-color-success ">提交</button>
								</div>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>

</div>