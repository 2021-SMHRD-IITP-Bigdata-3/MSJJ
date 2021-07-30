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

@WebServlet("/UpdateServiceCon")
public class UpdateServiceCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		
		String pw = request.getParameter("pw");
		String addr = request.getParameter("addr");
		String tel = request.getParameter("tel");
		
		
		HttpSession session = request.getSession();
		memberDTO info = (memberDTO)session.getAttribute("info");
		String email = info.getEmail();
		info= new memberDTO(email, pw, addr,tel);
		memberDAO dao = new memberDAO();
		
		int cnt = dao.update(info);
		
		if(cnt>0) {
			System.out.println("회원 정보 수정");
			//수정된 info값으로 session 덮어쓰기
			session.setAttribute("info", info);
		}else {
			System.out.println("회원 정보 주정 실패");
		}
		response.sendRedirect("main.jsp");
	}

}
