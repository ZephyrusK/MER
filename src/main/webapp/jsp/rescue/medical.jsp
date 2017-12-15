<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>

<div class="row-content am-cf">
<div class="row">
<div class="am-u-sm-12 am-u-md-12 am-u-lg-12 am-g" style="padding-top:30px;">
<div class="widget am-cf">
    <div class="widget-head am-cf">
        <div class="widget-title am-fl">病历信息：</div>        
    </div>
    <div class="widget-body am-fr">
        <form class="am-form tpl-form-border-form tpl-form-border-br">
            <div class="am-form-group">
                <label for="user-name" class="am-u-sm-3 am-form-label">主诉</label>
                <div class="am-u-sm-9">
                    <input type="text" class="tpl-form-input" id="user-name" placeholder="请输入主诉文字">                   
                </div>
            </div>
            <div class="am-form-group">
                <label for="user-name" class="am-u-sm-3 am-form-label">现病史</label>
                <div class="am-u-sm-9">
                    <input type="text" class="tpl-form-input" id="user-name" placeholder="请输入现病史文字">                   
                </div>
            </div>
            <div class="am-form-group">
                <label for="user-name" class="am-u-sm-3 am-form-label">既往史</label>
                <div class="am-u-sm-9">
                    <input type="text" class="tpl-form-input" id="user-name" placeholder="请输入既往史文字">                   
                </div>
            </div>
            <div class="am-form-group">
                <label for="user-name" class="am-u-sm-3 am-form-label">个人史</label>
                <div class="am-u-sm-9">
                    <input type="text" class="tpl-form-input" id="user-name" placeholder="请输入个人史文字">                   
                </div>
            </div>
            <div class="am-form-group">
                <label for="user-name" class="am-u-sm-3 am-form-label">家族史</label>
                <div class="am-u-sm-9">
                    <input type="text" class="tpl-form-input" id="user-name" placeholder="请输入家族史文字">                   
                </div>
            </div>
             <div class="am-form-group">
                <label for="user-intro" class="am-u-sm-3 am-form-label">体格检查</label>
                <div class="am-u-sm-9">
                    <textarea class="" rows="10" id="user-intro" placeholder="请输入体格检查内容"></textarea>
                </div>
            </div>
            <div class="am-form-group">
                <label for="user-intro" class="am-u-sm-3 am-form-label">专科检查</label>
                <div class="am-u-sm-9">
                    <textarea class="" rows="10" id="user-intro" placeholder="请输入专科检查内容"></textarea>
                </div>
            </div>
            <div class="am-form-group">
                <label for="user-intro" class="am-u-sm-3 am-form-label">辅助检查</label>
                <div class="am-u-sm-9">
                    <textarea class="" rows="10" id="user-intro" placeholder="请输入辅助检查内容"></textarea>
                </div>
            </div>
            <div class="am-form-group">
                <div class="am-u-sm-9 am-u-sm-push-3">
                    <button type="button" class="am-btn am-btn-primary tpl-btn-bg-color-success ">提交</button>
                </div>
            </div>
          </form>
        </div>
</div>
</div>
</div>
</div>