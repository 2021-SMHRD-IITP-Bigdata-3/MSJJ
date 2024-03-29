package com.command;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logoutServiceCon")
public class logoutServiceCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 로그인 정보 -> session
		// 로그아웃
		// session 제거
		HttpSession session = request.getSession();
		
		session.removeAttribute("info");
		// session.invalidate();
		
		response.sendRedirect("index.jsp");
	}

}
