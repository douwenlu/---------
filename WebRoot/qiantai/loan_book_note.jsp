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
					alert("请输入借阅天数!");
					document.form2.sumday.focus();
					return false;
				}
				if (isNaN(document.form2.sumday.value )  )  
				{
					alert("借阅天数必须是数字!");
					document.form2.sumday.focus();
					return false;
				}
			}
</script>	
	
  </head>
<%
String ok = (String)request.getAttribute("ok");
if(ok != null && ok.equals("1")){
%><script>alert('借阅成功!')</script><%
}
%>
<%
String okcontinue = (String)request.getAttribute("okcontinue");
if(okcontinue != null && okcontinue.equals("1")){
%><script>alert('续借成功!')</script><%
}
%>
<%
String okbeforehand = (String)request.getAttribute("okbeforehand");
if(okbeforehand != null && okbeforehand.equals("1")){
%><script>alert('预借成功!')</script><%
}
%>
 <jsp:include flush="true" page="/servlet/SessLoginServlet"/> 
  <body>
  <jsp:include flush="true" page="/servlet/ListServlet"/>
  <%
  ArrayList loanbook = (ArrayList)request.getAttribute("loanbook");
  ArrayList beforehand = (ArrayList)request.getAttribute("beforehand");
  ArrayList books = (ArrayList)request.getAttribute("books");
  ArrayList login = (ArrayList)session.getAttribute("login");
  ArrayList alRow = null;
   %>
   <jsp:include flush="true" page="top.jsp"/>
  <div align="center">
	<table border="0" width="800" cellspacing="0" cellpadding="0" id="table1">
		<tr>
			<td height ="500" valign="top" bgcolor="#E1E1FF">
			<form action="servlet/BookinfServlet" method="post" name="form2" onsubmit="return login222()">
			<table border="1" width="100%" bordercolorlight="#C0C0C0" cellspacing="0" cellpadding="0" bordercolordark="#C0C0C0" bgcolor="#E8E8E8" style="border-collapse: collapse" id="table2">
				<tr>
					<td colspan="10" align="center" height="20">图书借阅记录</td>
				</tr>
				<tr>
					<td align="center" height="20">图书名称</td>
					<td align="center" height="20">每日租金</td>
					<td align="center" height="20">借阅天数</td>
					<td align="center" height="20">借书时间</td>
					<td align="center" height="20">还书时间</td>
					<td align="center" height="20">续借天数</td>
					<td align="center" height="20">续借还书日期</td>
					<td align="center" height="20">租金合计</td>
					<td align="center" height="20">是否还书</td>
					<td align="center" height="20">　</td>
				</tr>
				<%
				for(int i = 0;i < loanbook.size();i++){
					alRow = (ArrayList)loanbook.get(i);
					if(!alRow.get(1).equals(login.get(0))){
						continue;
					}
				 %>
				<tr>
					<td align="center" height="20">
					<%
					for(int j = 0;j < books.size();j++){
						ArrayList booksRow = (ArrayList)books.get(j);
						if(booksRow.get(0).equals(alRow.get(2))){
							%><a href="servlet/BookinfServlet?id=<%=booksRow.get(0)%>" title="点击查看详细信息"><%=booksRow.get(1) %></a><%
							break;
						}
					}
					 %>
					</td>
					<td align="center" height="20"><%=alRow.get(3) %>元</td>
					<td align="center" height="20"><%=alRow.get(4) %></td>
					<td align="center" height="20"><%=alRow.get(5).toString().substring(0,10) %></td>
					<td align="center" height="20"><%=alRow.get(6).toString().substring(0,10) %></td>
					<td align="center" height="20">
					<%
					if(alRow.get(7) == null){
						%>未续借<%
					}else{
						%><%=alRow.get(7) %><%
					}
					 %>
					</td>
					<td align="center" height="20">
					<%
					if(alRow.get(8) == null){
						%>未续借<%
					}else{
						%><%=alRow.get(8).toString().substring(0,10) %><%
					}
					 %>
					</td>
					<td align="center" height="20">
					<%
					if(alRow.get(7) == null){
						%><%=Integer.parseInt(alRow.get(3).toString())*Integer.parseInt(alRow.get(4).toString()) %>元<%
					}else{
						%><%=Integer.parseInt(alRow.get(3).toString())*Integer.parseInt(alRow.get(4).toString())+Integer.parseInt(alRow.get(3).toString())*Integer.parseInt(alRow.get(7).toString()) %>元<%
					}
					 %>
					</td>
					<td align="center" height="20"><%=alRow.get(9) %></td>
					<td align="center" height="20">
					<%
					if(alRow.get(7) == null){
					 %>
					<a href="qiantai/continue_book.jsp?id=<%=alRow.get(0) %>">续借</a>
					<%} %></td>
				</tr>
				<%} %>
			</table><br>			
			<table border="1" width="100%" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" bgcolor="#E8E8E8" style="border-collapse: collapse" id="table3">
				<tr>
					<td colspan="3" align="center" height="20">图书预借记录</td>
				</tr>
				<tr>
					<td align="center" height="20">图书名称</td>
					<td align="center" height="20">每日租金</td>
					<td align="center" height="20">预借时间</td>
				</tr>
				<%
				for(int i = 0;i < beforehand.size();i++){
					alRow = (ArrayList)beforehand.get(i);
					if(!alRow.get(1).equals(login.get(0))){
						continue;
					}
				 %>
				<tr>
					<td align="center" height="20">
					<%
					for(int j = 0;j < books.size();j++){
						ArrayList booksRow = (ArrayList)books.get(j);
						if(booksRow.get(0).equals(alRow.get(2))){
							%><a href="servlet/BookinfServlet?id=<%=booksRow.get(0)%>" title="点击查看详细信息"><%=booksRow.get(1) %></a><%
							break;
						}
					}
					 %>
					</td>
					<td align="center" height="20"><%=alRow.get(3) %>元</td>
					<td align="center" height="20"><%=alRow.get(4).toString().substring(0,10) %></td>
				</tr>
				<%} %>
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