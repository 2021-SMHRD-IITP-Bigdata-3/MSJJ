package com.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.moder.BoardDAO;
import com.moder.BoardDTO;
import com.moder.productDTO;

/**
 * ReviewBoard.jsp
 */
@WebServlet("/reviewBoard3ServiceCon")
public class reviewBoard3ServiceCon extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		int boardNum = Integer.parseInt(request.getParameter("boardNum"));
		System.out.println("board"+boardNum);
		int productNum = Integer.parseInt(request.getParameter("productNum"));
		System.out.println("product"+productNum);
		BoardDAO dao = new BoardDAO();
		ArrayList<productDTO> list = dao.showOne(productNum);
		ArrayList<BoardDTO> board_list = dao.showOneBoard(boardNum); 
		
		
		String moveURL = "";
		
		if(list != null) {
			System.out.println("리뷰 불러오기 성공");
			session.setAttribute("list", list);
			session.setAttribute("board_list", board_list);
			moveURL = "ReviewBoard3.jsp";
		}else{
			System.out.println("실패");
			moveURL = "ReviewBoard3.jsp";
		}
		
		
		response.sendRedirect(moveURL);
	
	}

}
