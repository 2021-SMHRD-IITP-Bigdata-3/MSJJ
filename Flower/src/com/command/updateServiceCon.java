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
		
		// �����ϰ� ���� pw, tel, addr �� �޾ƿ���
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		System.out.println(pw);
		System.out.println(name);
		System.out.println(tel);
		// ���� ���� �α����� �̸��� ������ ����
		HttpSession session = request.getSession();
		memberDTO info = (memberDTO)session.getAttribute("info");
		String email = info.getEmail();
		
		// �α��� ������ ����ִ� info������ ������ pw, tel, addr�� ������
		
		info = new memberDTO(name, pw, tel, email);
		memberDAO dao = new memberDAO();
		int cnt = dao.update(info);
		
		if(cnt > 0) {
			System.out.println("ȸ������ ���� ����");
			// ������ info������ session �����
			session.setAttribute("info", info);
		}else {
			System.out.println("ȸ������ ���� ����");
		}
		response.sendRedirect("index.jsp");
	}

}
