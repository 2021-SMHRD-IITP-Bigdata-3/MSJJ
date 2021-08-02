package com.command;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moder.reviewDAO;

@WebServlet("/DeleteOneServiceCon")
public class DeleteOneServiceCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		int num= Integer.parseInt(request.getParameter("borad_number"));
		System.out.println(num);
		
		reviewDAO dao = new reviewDAO();
		int cnt =dao.deleteOnereview(num);
		
		//
		if(cnt > 0) {
			System.out.println("삭제성공");
		}else {
			System.out.println("삭제 실패");
		}
		response.sendRedirect("ReviewBoard.jsp");
	}

}
