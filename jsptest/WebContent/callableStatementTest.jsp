<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="java.sql.*, javax.sql.*, javax.naming.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = null;
	CallableStatement cs = null;
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/shopdb");
		conn = ds.getConnection();
		cs=conn.prepareCall("{call Get_Annual_Income(?,?)}");
		cs.setString(1,"aaa");
		cs.registerOutParameter(2, java.sql.Types.INTEGER);
		cs.execute();
		out.println("<h3>"+cs.getInt(2)+"</h3>");
	}catch (Exception e){
		out.println("<h3>레코드 등록에 실패하였습니다</h3>");
		e.printStackTrace();
	}
	finally{
		try{
			cs.close();
			conn.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
%>
</body>
</html>