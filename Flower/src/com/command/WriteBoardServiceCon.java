package com.command;

import java.io.IOException;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.moder.BoardDAO;



@WebServlet("/WriteBoardServiceCon")
public class WriteBoardServiceCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String content = request.getParameter("content");
		System.out.println(content);
		int score = Integer.parseInt(request.getParameter("score"));
		System.out.println(score);
		
		
		String email = (String)session.getAttribute("email");
		String image = (String)session.getAttribute("image");
		int price = (Integer)session.getAttribute("price");
		String storename = (String)session.getAttribute("storename");
		String productName = (String)session.getAttribute("name");
		int productNum = (Integer)session.getAttribute("productNum");
		int storeNum = (Integer)session.getAttribute("storeNum");
				
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.upload(productNum, score, storeNum, content, email);
			
		
		if(cnt > 0) {
			System.out.println("리뷰등록 성공");
		}else {
			System.out.println("리뷰등록 실패");
		}
		response.sendRedirect("index.jsp");
	}

}
