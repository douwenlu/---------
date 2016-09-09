<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Language" content="zh-cn">
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="img/lucfron.css">
	
  </head>
<jsp:include flush="true" page="/admin_session.jsp"/>
  <body topmargin="0" bgcolor="#EAEAEA">
  <jsp:include flush="true" page="/servlet/ListServlet"></jsp:include>
  <%
  ArrayList emp = (ArrayList)request.getAttribute("emp");
  String id = request.getParameter("id");
  ArrayList alRow = null;
  for(int i = 0;i < emp.size();i++){
  	alRow = (ArrayList)emp.get(i);
  	if(alRow.get(0).equals(id)){
  		break;
  	}
  }
   %>
  <table border="0" align="center" background="img/MainBg.gif" width="100%">
		<tr>
			<td valign="top" bgcolor="#E8E8E8">
			<table id="table2" style="width: 100%; border-left: 1px solid #7BD676; border-right: 1px solid #7BD676; border-top: 11px solid #7bd676; border-bottom: 1px solid #7BD676; margin: 0; padding: 0" cellSpacing="1" cellPadding="0">
				<tbody style="margin: 0; padding: 0">
					<tr class="rb">
						<td class="pl" align="center" colspan="2" height="25">
						<span style="color: #874604">员工详细信息</span></td>
					</tr>
					<tr class="ry">
						<td class="pl" align="right" width="49%">
						<span style="color: #874604">员工姓名：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="left" width="50%">
						&nbsp;<%=alRow.get(1) %></td>
					</tr>
					<tr class="rb">
						<td class="pl" align="right" width="49%">
						<span style="color: #874604">员工性别：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="left" width="50%">
						&nbsp;<%=alRow.get(2) %></td>
					</tr>
					<tr class="ry">
						<td class="pl" align="right" width="49%">
						<span style="color: #874604">员工生日：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="left" width="50%">
						&nbsp;<%=alRow.get(3) %></td>
					</tr>					
					<tr class="ry">
						<td class="pl" align="right" width="49%">
						<span style="color: #874604">联系电话：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="left" width="50%">
						&nbsp;<%=alRow.get(4) %></td>
					</tr>					
					<tr class="ry">
						<td class="pl" align="right" width="49%">
						<span style="color: #874604">家庭住址：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="left" width="50%">
						&nbsp;<%=alRow.get(5) %></td>
					</tr>					
					<tr class="ry">
						<td class="pl" align="right" width="49%">
						<span style="color: #874604">员工职务：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="left" width="50%">
						&nbsp;<%=alRow.get(6) %></td>
					</tr>
					<tr class="ry">
						<td class="pl" align="right" width="49%">
						<span style="color: #874604">员工状态：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="left" width="50%">
						&nbsp;<%=alRow.get(7) %></td>
					</tr>
					</table>
			</td>
			
		</tr>
		</table>
  
  </body>
</html>