package com.command;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.moder.memberDAO;
import com.moder.memberDTO;

@WebServlet("/updateServiceCon")
public class updateServiceCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		// 수정하고 싶은 pw, tel, addr 값 받아오기
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		System.out.println(pw);
		System.out.println(name);
		System.out.println(tel);
		// 현재 내가 로그인한 이메일 가지고 오기
		HttpSession session = request.getSession();
		memberDTO info = (memberDTO)session.getAttribute("info");
		String email = info.getEmail();
		
		// 로그인 정보가 담겨있는 info변수에 수정할 pw, tel, addr로 덮어씌우기
		
		info = new memberDTO(name, pw, tel, email);
		memberDAO dao = new memberDAO();
		int cnt = dao.update(info);
		
		if(cnt > 0) {
			System.out.println("회원정보 수정 성공");
			// 수정된 info값으로 session 덮어쓰기
			session.setAttribute("info", info);
		}else {
			System.out.println("회원정보 수정 실패");
		}
		response.sendRedirect("index.jsp");
	}

}
