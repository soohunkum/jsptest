<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix= "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL sql라이브러리 사용 예제</title>
</head>
<body>
<sql:setDataSource
	var = "conn"
	user = "root"
	password = "yt1234"
	driver = "com.mysql.cj.jdbc.Driver"
	url = "jdbc:mysql://localhost:3306/managersystem?useUnicode=ture&characterEncoding=UTF8&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=Asia/Seoul"
	/>
<sql:update dataSource = "${conn}">
 INSERT INTO test (num, name) VALUES (1, '홍길동')
</sql:update>
<sql:update dataSource = "${conn}">
 INSERT INTO test (num, name) VALUES (2, '조준동')
</sql:update>
<sql:update dataSource = "${conn}">
 INSERT INTO test (num, name) VALUES (3, '홍길동')
</sql:update>
<sql:update dataSource = "${conn}">
 INSERT INTO test (num, name) VALUES (4, '홍길순')
</sql:update>

<sql:query var = "rs" dataSource="${conn}">
	SELECT * FROM test WHERE name = ?
	<sql:param>홍길동</sql:param>
</sql:query>

<c:forEach var ="data" items="${rs.rows}">
	<c:out value = "${data['num']}"/>
	<c:out value = "${data['name']}"/>
	<br>
</c:forEach>
</body>
</html>