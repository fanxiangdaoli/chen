<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
        <script language="javascript">
           function userDel(userId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/userDel.action?userId="+userId;
               }
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="10" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="4%">序号</td>
					<td width="10%">账号</td>
					<td width="10%">密码</td>
					<td width="10%">姓名</td>
					
					<td width="10%">性别</td>
					<td width="10%">年龄</td>
					<td width="10%">住址</td>
					<td width="10%">电话</td>
					
					<td width="10%">邮箱</td>
					<td width="10%">操作</td>
		        </tr>	

				<c:forEach items="${userList}" var="user" varStatus="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						${ss.index+1}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${user.username}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    ${user.userpw}
					</td>
					<td bgcolor="#FFFFFF" align="center">
				
						${user.userrealname}
					</td>
					<td bgcolor="#FFFFFF" align="center">

					    ${user.usersex}
					</td>
					<td bgcolor="#FFFFFF" align="center">

					    ${user.userage}
					</td>
					<td bgcolor="#FFFFFF" align="center">

						${user.useraddress}
					</td>
					<td bgcolor="#FFFFFF" align="center">
			
						${user.usertel}
					</td>
					<td bgcolor="#FFFFFF" align="center">

						${user.useremail}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="删除" onclick="userDel(${user.userid})"/>
					</td>
				</tr>
			</c:forEach>
			</table>
	</body>
</html>
