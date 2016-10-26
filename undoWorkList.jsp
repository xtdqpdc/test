<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/base/pages/coreHead.jsp"%>
<%@include file="/base/pages/listHead.jsp"%>
<!doctype html>
<html>
  <head>
    <title>问题管理待办页面</title>
  </head>
  <body>
  
<ul class="nav nav-tabs" role="tablist" id="maintab">
  <li class="active"><a href="#tab1"  onclick='showPage("tab1","undolistUnSign.do")'>未签收待办工单</a></li>
  <li><a href="#tab2" onclick='showPage("tab2","undolistSigned.do")'>已签收待办工单</a></li>
</ul>
<div class="tab-content">
  	<div class="tab-pane active" id="tab1"></div>
  	<div class="tab-pane" id="tab2"></div>
</div>
</body>
<script type="text/javascript">
$(function(){
	showPage("tab1","undolistUnSign.do");
})
function showPage1(){}
//切换页面
function showPage(tabId, url){
	$('#maintab a[href="#'+tabId+'"]').tab('show'); // 显示点击的tab页面
	if($('#'+tabId).html().length<20){
		$('#'+tabId).html('<br><img src="/UCloudApp/images/dealing.jpg">');
		$('#'+tabId).load(url);
	}
}
</script>
</html>
