<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>网络订餐</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="img/lucfron.css" type="text/css" rel="stylesheet"/>
	
  </head>
  
  <body topmargin="0" leftmargin="0" rightmargin="0">
  <div align="center">
	<table border="0" width="800" cellspacing="0" cellpadding="0" id="table1" height="29">
		<tr>
			<td background="img/ahjj_03.jpg">
			<div align="center">
				<table border="0" width="90%" id="table2" cellpadding="0" height="100%" cellspacing="0">
					<tr>
						<td align="center"><a class="linkbody" href="qiantai/index.jsp">[ 首页 ]</a></td>
						<td align="center"><a class="linkbody" href="qiantai/reg.jsp">[ 用户注册 ]</a></td>
						<td align="center"><a class="linkbody" href="servlet/ShowUserServlet">[ 用户中心 ]</a></td>
						<td align="center"><a class="linkbody" href="qiantai/getback_pwd.jsp">[ 找回密码 ]</a></td>
						<td align="center"><a class="linkbody" href="qiantai/search.jsp">[ 订餐搜索 ]</a></td>						
						<td align="center"><a class="linkbody" href="servlet/ShoppingServlet">[ 订餐车 ]</a></td>
						<td align="center"><a class="linkbody" href="qiantai/nutrition_list.jsp">[ 营养指南 ]</a></td>
						<td align="center"><a class="linkbody" href="qiantai/leave_word.jsp">[ 在线留言 ]</a></td>
						<td align="center"><a class="linkbody" href="servlet/RemoveServlet?login=1">[ 注销退出 ]</a></td>
					</tr>
				</table>
			</div>
			</td>
		</tr>
	</table>
</div>
  </body>
</html>