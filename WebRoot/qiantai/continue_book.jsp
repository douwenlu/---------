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
  <script language="JavaScript">
		function login222()
			{
				
				if (document.form2.sumday.value == "" ) 
				{
					alert("��������������!");
					document.form2.sumday.focus();
					return false;
				}
				if (isNaN(document.form2.sumday.value )  )  
				{
					alert("������������������!");
					document.form2.sumday.focus();
					return false;
				}
			}
</script>	
	
  </head>
<%
String error1 = (String)request.getAttribute("error1");
if(error1 != null && error1.equals("1")){
%><script>alert('��ͼ���ѱ�ȫ���������ѡ��Ԥ��!')</script><%
}
%>
<%
String error2 = (String)request.getAttribute("error2");
if(error2 != null && error2.equals("1")){
%><script>alert('��ͼ������δ�黹�������ڽ�!')</script><%
}
%>
 <jsp:include flush="true" page="/servlet/SessLoginServlet"/> 
  <body>
  <jsp:include flush="true" page="/servlet/ListServlet"/>
  <%
  String id = request.getParameter("id");
  if(id == null){
  	id = (String)request.getAttribute("id");
  }
  ArrayList books = (ArrayList)request.getAttribute("books");
  ArrayList bookinf = null;
  ArrayList loanbook = (ArrayList)request.getAttribute("loanbook");
  ArrayList loanbookRow = null;
  for(int i = 0;i < loanbook.size();i++){
  	loanbookRow = (ArrayList)loanbook.get(i);
  	if(loanbookRow.get(0).equals(id)){
  		break;
  	}
  }
  if(id != null && !id.equals("")){
  	for(int i = 0;i < books.size();i++){
  		bookinf = (ArrayList)books.get(i);
  		if(bookinf.get(0).equals(loanbookRow.get(2))){
  			break;
  		}
  	}
  }
  ArrayList type = (ArrayList)request.getAttribute("type");
   %>
   <jsp:include flush="true" page="top.jsp"/>
  <div align="center">
	<table border="0" width="800" cellspacing="0" cellpadding="0" id="table1">
		<tr>
			<td rowspan="2" width="178" valign="top"><jsp:include flush="true" page="left.jsp"/></td>
			<td>
			<form action="servlet/ContinueBookServlet?id=<%=id %>" method="post" name="form2" onsubmit="return login222()">
			<table border="1" width="100%" style="border-style: solid; border-width: 1px" bordercolorlight="#C0C0C0" bordercolordark="#FFFFFF" height="334">
		<tr>
			<td colspan="2" align="center">ͼ������</td>
		</tr>
		<tr>
			<td rowspan="7" width="31%" align="center"><a target="_blank" href="<%=bookinf.get(11)%>"><img alt="��������Ʒ��ͼ" src="<%=bookinf.get(11)%>" border="0" width="65" height="96"></td>
			<td height="30" width="67%">��ͼ�����ơ�<%=bookinf.get(1)%></td>
		</tr>
		<tr>
			<td height="30" width="67%">��ͼ�����ߡ�<%=bookinf.get(2)%></td>
		</tr>
		<tr>
			<td height="30" width="67%">����Ʒ��桿<%=bookinf.get(6)%> ��</td>
		</tr>
		<tr>
			<td height="30" width="67%">��ÿ�����<%=bookinf.get(5)%> Ԫ</td>
		</tr>
		<tr>
			<td height="30" width="67%">
			<%
            for(int i = 0;i < type.size();i++){
            	ArrayList alRow = (ArrayList)type.get(i);
            	if(alRow.get(0).equals(bookinf.get(8))){ 
            %>���������<%=alRow.get(1)%>
              <%break;}} %>
			</td>
		</tr>
		<tr>
			<td height="30" width="67%">
			������������<input type="text" name="sumday" size="20"></td>
		</tr>
		<tr>
			<td height="30" width="67%" align="center">
			<input type="submit" value="�ύ����"></td>
		</tr>
		</table>
		</form>
			</td>
		</tr>
		<tr>
			<td>
			<table border="1" width="100%" cellspacing="0" cellpadding="0" style="border-style: solid; border-width: 1px" bordercolorlight="#C0C0C0" bordercolordark="#FFFFFF">
		</table>
			</td>
		</tr>
	</table>
	</div>
	<jsp:include flush="true" page="Copyright.jsp"/>
  </body>
</html>