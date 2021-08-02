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
import com.moder.productDAO;
import com.moder.productDTO;


@WebServlet("/productSevicematchingCon")
public class productSevicematchingCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		String product_number = request.getParameter("product_number");
		String product_purpose = request.getParameter("product_purpose");
		System.out.println("product_number :"+product_number);
		
		
		productDAO dao = new productDAO();
		productDTO info = dao.matching(product_number, product_purpose);
		
		if(info != null) {
			System.out.println("로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
		}else {
			System.out.println("로그인 실패");
		}
		response.sendRedirect("main.jsp");
	}
		
		
		
	}


