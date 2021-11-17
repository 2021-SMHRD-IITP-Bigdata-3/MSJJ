package com.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.moder.buyDTO;
import com.moder.buylistDAO;


@WebServlet("/showBuyServiceCon")
public class showBuyServiceCon extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		
		String id = request.getParameter("id");
		
		buylistDAO dao = new buylistDAO();
		ArrayList<buyDTO> buyList = new ArrayList<buyDTO>();
		buyList = dao.showBuy(id);
		String moveURL = "";
		if(buyList != null) {
			System.out.println("���ų��� �ҷ����� ����");
			HttpSession session = request.getSession();
			session.setAttribute("buyList", buyList);		
			moveURL = "buylist.jsp";
		}else{
			System.out.println("���ų��� �ҷ����� ����");
			moveURL = "buylist.jsp";
		}
		
		response.sendRedirect(moveURL);
	}

}
