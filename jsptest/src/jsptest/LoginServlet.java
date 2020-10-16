package jsptest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request,response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("post");
		doProc(request,response);
	
	}

	protected void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); //post에서 한글 처리
		response.setContentType("text/html;charset=utf-8"); //get에서 한글 처리
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		PrintWriter out = response.getWriter();
		String hv = request.getParameter("hiddenValue");
		out.println("<p>아이디=" +id +"</p>");
		out.println("<p>비밀번호=" + pw +"</p>");
		out.println(hv);
	}
}
