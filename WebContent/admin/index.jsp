<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%String path = request.getContextPath();%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <script type="text/javascript">
    <c:if test="${sessionScope.admin}==null">
    window.location.href="<%=path%>/login.jsp";
    </c:if>
    </script>
  </head>
  
 <FRAMESET frameSpacing=0 rows=120,* frameBorder=0>
     <FRAME name=top src="<%=path %>/admin/top.jsp" frameBorder=0 noResize scrolling=no>
     <FRAMESET frameSpacing=0 frameBorder=0 cols=220,*>
         <FRAME name=menu src="<%=path %>/admin/menu.jsp" frameBorder=0 noResize>
         <FRAME name=dmMain src="<%=path %>/admin/right.jsp" frameBorder=0>
     </FRAMESET>
 </FRAMESET>
 
 
 <NOFRAMES>
        <p></p>
 </NOFRAMES>
</html>
