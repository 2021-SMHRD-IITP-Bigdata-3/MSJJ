package com.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.moder.StoreDTO;
import com.moder.buylistDAO;
import com.moder.productDTO;
import com.moder.recommDAO;


@WebServlet("/buylistServiceCon")
public class buylistServiceCon extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int productNum = Integer.parseInt(request.getParameter("productNum"));
		int a = Integer.parseInt(request.getParameter("num"));
		int b = Integer.parseInt(request.getParameter("storeNum"));
		int productPrice = Integer.parseInt(request.getParameter("productPrice"));
		String id = request.getParameter("id");
		String productName = request.getParameter("productName");
		String productImage = request.getParameter("productImage");
		String storeName = request.getParameter("storeName");
		buylistDAO dao = new buylistDAO();
		int cnt = dao.insertBuylist(productNum, a, b, productPrice, id, productName, productImage, storeName);
		
		if (cnt>0) {
			System.out.println("구매리스트 등록 성공");
			HttpSession session = request.getSession();
			session.setAttribute("productNum", productNum);
			session.setAttribute("num", a);
			session.setAttribute("storeNum", b);
			session.setAttribute("id", id);
		}else {
			System.out.println("구매리스트 등록  실패");	
		}
		response.sendRedirect("buy_complete.jsp");
	}

}
