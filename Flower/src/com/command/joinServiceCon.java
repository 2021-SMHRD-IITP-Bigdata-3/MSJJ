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

@WebServlet("/joinServiceCon")
public class joinServiceCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		int member_number= Integer.parseInt(request.getParameter("member_number"));
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String addr = request.getParameter("addr");
		String birthday = request.getParameter("birthday");
		String tel = request.getParameter("tel");
		
		System.out.println("member_number :"+member_number);
		System.out.println("email :"+email);
		System.out.println("pw :"+pw);
		System.out.println("addr :"+addr);
		System.out.println("birthday :"+birthday);
		System.out.println("tle :"+tel);
		
		memberDTO dto = new memberDTO(member_number, email, pw, addr, birthday, tel);
		memberDAO dao = new memberDAO();
		int cnt = dao.join(dto);
		
		String moveURL ="";
		if(cnt >0) {
			System.out.println("회원가입 성공");
			moveURL="join_success.jsp";
			HttpSession session = request.getSession();
			session.setAttribute("name", email);
		}else {
			System.out.println("회원가입 실패");
			moveURL="main.jsp";
		}
		response.sendRedirect(moveURL);
		
	}

}
