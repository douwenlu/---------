<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>���綩��</title>
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
						<td align="center"><a class="linkbody" href="qiantai/index.jsp">[ ��ҳ ]</a></td>
						<td align="center"><a class="linkbody" href="qiantai/reg.jsp">[ �û�ע�� ]</a></td>
						<td align="center"><a class="linkbody" href="servlet/ShowUserServlet">[ �û����� ]</a></td>
						<td align="center"><a class="linkbody" href="qiantai/getback_pwd.jsp">[ �һ����� ]</a></td>
						<td align="center"><a class="linkbody" href="qiantai/search.jsp">[ �������� ]</a></td>						
						<td align="center"><a class="linkbody" href="servlet/ShoppingServlet">[ ���ͳ� ]</a></td>
						<td align="center"><a class="linkbody" href="qiantai/nutrition_list.jsp">[ Ӫ��ָ�� ]</a></td>
						<td align="center"><a class="linkbody" href="qiantai/leave_word.jsp">[ �������� ]</a></td>
						<td align="center"><a class="linkbody" href="servlet/RemoveServlet?login=1">[ ע���˳� ]</a></td>
					</tr>
				</table>
			</div>
			</td>
		</tr>
	</table>
</div>
  </body>
</html>