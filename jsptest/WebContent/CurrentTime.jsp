<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.Calendar" %>
 <%
 	Calendar c = Calendar.getInstance();
 	int h = c.get(Calendar.HOUR_OF_DAY);
 	int m = c.get(Calendar.MINUTE);
 	int s = c.get(Calendar.SECOND);
 	//자바주석
 	/*자바주석*/
 %>
 <%-- JSP주석 --%>
<!DOCTYPE html>
<!-- HTML 주석 -->
<html>
<head>
<meta charset="UTF-8">
<title>현재 시각</title>
/* css주석 */
</head>
<body>
	<h1>현재 시간은 <%=h %>시 <%=m %>분 <%=s %>초 입니다.</h1>
<script>
		//자바스크립트 주석
		/*자바스크립트 주석*/
</script>
</body>
</html>