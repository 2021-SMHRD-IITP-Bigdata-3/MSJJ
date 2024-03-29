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

/**
 * ReviewBoard.jsp
 */
@WebServlet("/reviewBoardServiceCon")
public class reviewBoardServiceCon extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		BoardDAO dao = new BoardDAO();
		ArrayList<BoardDTO> list = dao.showBoard();
		
		String moveURL = "";
		
		if(list != null) {
			System.out.println("리뷰 불러오기 성공");
			session.setAttribute("list", list);
			moveURL = "ReviewBoard.jsp";
		}else{
			System.out.println("실패");
			moveURL = "ReviewBoard.jsp";
		}
		
		
		response.sendRedirect(moveURL);
	
	}

}
