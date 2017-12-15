<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>

<div class="container-fluid am-cf">
<div class="am-g" style="padding-top:30px;">  
  <div class="am-u-sm-12">
    <form class="am-form tpl-form-border-form tpl-form-border-br">
    <div class="am-panel am-panel-primary">
	  <div class="am-panel-hd" style="padding-top: 0px;padding-bottom: 0px;">基础资料</div>
      <table class="am-table">
        <tbody>            
	        <tr>
	          <td>姓名</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入姓名"></td>
	          <td>性别</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入性别"></td>
	          <td>血型</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入血型"></td>             
	        </tr>
	       	<tr>
	          <td>年龄</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入年龄"></td>
	          <td>身高</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入身高"></td>
	          <td>体重</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入体重"></td>             
	       	 </tr>
	       	<tr>
	          <td>国籍</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入国籍"></td>
	          <td>籍贯</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入籍贯"></td>
	          <td>民族</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入民族"></td>             
	       	 </tr>
	       	<tr>
	          <td style="width: 85px;">出生日期</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入出生日期"></td>
	          <td>出生地</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入出生地"></td>
	          <td>文化程度</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入文化程度"></td>             
	       	 </tr>
	       	<tr>
	          <td>宗教信仰</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入宗教信仰"></td>
	          <td >婚姻状况</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入婚姻状况"></td>
	          <td >身份证</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入身份证"></td>             
	       	</tr>       	
        </tbody>
      </table>        
   	</div>
    </form>
  </div> 
  
   <div class="am-u-sm-12">
    <form class="am-form tpl-form-border-form tpl-form-border-br">
      <div class="am-panel am-panel-primary">
	  <div class="am-panel-hd" style="padding-top: 0px;padding-bottom: 0px;">联系方式</div>
      <table class="am-table">
        <tbody>            
	        <tr>
	          <td>家庭住址</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入家庭住址"></td>
	          <td>住址邮编</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入住址邮编"></td>	
	        </tr>
	       	<tr>
	          <td>手机</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入手机"></td>
	          <td>固定电话</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入固定电话"></td>
	          <td>Email</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入Email"></td>             
	       	 </tr>
	       	 <tr>
	          <td style="width: 85px;">联系人姓名</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入联系人姓名"></td>
	          <td>关系</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入关系"></td>           
	       	 </tr>
	       	 <tr>
	          <td>联系人住址</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入联系人住址"></td>
	          <td >住址邮编</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入住址邮编"></td> 
	       	 </tr>
	       	 <tr>
	          <td>联系人手机</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入联系人手机"></td>
	          <td>固定电话</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入固定电话"></td>
	          <td >Email</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入Email"></td>             
	       	 </tr>       	
        </tbody>
      </table> 
      </div>       
    </form>
  </div>
  
  <div class="am-u-sm-12">
    <form class="am-form tpl-form-border-form tpl-form-border-br">
      <div class="am-panel am-panel-primary">
	  <div class="am-panel-hd" style="padding-top: 0px;padding-bottom: 0px;">单位资料</div>
      <table class="am-table">
        <tbody>            
	        <tr>
	          <td>职业</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入职业"></td>
	          <td>单位名称</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入单位名称"></td>
	          <td>单位电话</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入单位电话"></td>	
	        </tr>
	       	<tr>	          
	          <td>单位地址</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入单位地址"></td>
	          <td>单位邮编</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入单位邮编"></td>             
	       </tr>
        </tbody>
      </table> 
      </div>       
    </form>
  </div>
  
   <div class="am-u-sm-12">
    <form class="am-form tpl-form-border-form tpl-form-border-br">
      <div class="am-panel am-panel-primary">
	  <div class="am-panel-hd" style="padding-top: 0px;padding-bottom: 0px;">其他信息</div>
      <table class="am-table">
        <tbody>            
	        <tr>
	          <td>计费类型</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入计费类型"></td>
	          <td>医保号</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入医保号"></td>
	          <td>随访号</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入随访号"></td>	
	        </tr>
	       	<tr>	          
	          <td>军人</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入军人"></td>
	          <td>军兵种</td>
	          <td><input type="text" class="tpl-form-input" id="user-name" placeholder="请输入军兵种"></td>             
	       </tr>
        </tbody>
      </table> 
      </div>       
    </form>
  </div>
</div>
</div>
