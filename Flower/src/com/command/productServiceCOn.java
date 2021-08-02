package com.command;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moder.memberDAO;
import com.moder.memberDTO;
import com.moder.productDAO;
import com.moder.productDTO;

@WebServlet("/productServiceCOn")
public class productServiceCOn extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		int product_number = Integer.parseInt(request.getParameter("product_number"));
		String product_flower = request.getParameter("product_flower");
		String product_name = request.getParameter("product_name");
		int product_price = Integer.parseInt(request.getParameter("product_price"));
		String product_stock = request.getParameter("product_stock");
		String product_image = request.getParameter("product_image");
		String product_mean = request.getParameter("product_mean");
		String product_purpose = request.getParameter("product_purpose");
		int product_store = Integer.parseInt(request.getParameter("product_store"));
		
		productDTO dto = new productDTO(product_number, product_flower, product_name, product_price, product_stock, product_image, product_mean, product_purpose, product_store);
		productDAO dao = new productDAO();
		int cnt = dao.insertproduct(dto);
		
		if(cnt >0) {
			System.out.println("입력성공");
		}else {
			System.out.println("입력실패");
		}
		response.sendRedirect("Market.jsp");
	}

}
