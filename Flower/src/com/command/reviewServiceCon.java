package com.command;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moder.reviewDAO;
import com.moder.reviewDTO;

@WebServlet("/reviewServiceCon")
public class reviewServiceCon extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		int borad_number = Integer.parseInt(request.getParameter("borad_number"));
		String borad_name = request.getParameter("borad_name"); 
		int borad_flower = Integer.parseInt(request.getParameter("borad_flower")); 
		int borad_store = Integer.parseInt(request.getParameter("borad_store")); 
		String borad_content = request.getParameter("borad_content"); 
		String borad_member = request.getParameter("borad_member");
		String borad_date = request.getParameter("String borad_date");
		String borad_score = request.getParameter("borad_score");
		
		
		System.out.println(borad_number);
		System.out.println(borad_name);
		System.out.println(borad_flower);
		System.out.println(borad_store);
		System.out.println(borad_content);
		System.out.println(borad_member);
		System.out.println(borad_date);
		
		reviewDTO dto = new reviewDTO(borad_number, borad_name, borad_flower, borad_store, borad_content, borad_member, borad_date, borad_score);
		reviewDAO dao = new reviewDAO();
		int cnt = dao.insertreview(dto);
		
		if(cnt >0) {
			System.out.println("메세지 전송 성공");
			
		}else {
			System.out.println("메세지 전송 실패");
		}
		
		response.sendRedirect("ReviewBoard.jsp");
	}

	}

