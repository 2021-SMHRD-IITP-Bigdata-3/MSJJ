package com.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.moder.StoreDTO;
import com.moder.flowerDTO;
import com.moder.memberDAO;
import com.moder.mixDTO;
import com.moder.productDTO;
import com.moder.recommDAO;


@WebServlet("/recommServiceCon2")
public class recommServiceCon2 extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String eventDay = request.getParameter("eventDay");
		String flowerMean = request.getParameter("flowerMean");
		String flowerType = request.getParameter("flowerType");
		int mainNum = Integer.parseInt(request.getParameter("mainNum"));
		System.out.println("일"+eventDay);
		System.out.println("말"+flowerMean);
		int listNum = 0; 
		int storeNum = 0;
		
		switch (mainNum){
		case 1:
			storeNum = 11;
			break;
		case 2:
			storeNum = 1;
			break;
		case 3:
			storeNum = 3;
			break;
		case 4:
			storeNum = 1;
			break;
	}
		
		ArrayList<mixDTO> list = new ArrayList<mixDTO>();
		recommDAO dao = new recommDAO();
		list = dao.recomm_mix(eventDay, flowerMean);
		
		ArrayList<productDTO> list2 = new ArrayList<productDTO>();
		list2 = dao.recomm_product2(list, flowerType, mainNum);
		
		ArrayList<flowerDTO> list3 = new ArrayList<flowerDTO>();
		list3 = dao.recomm_flower(list2);
		
		ArrayList<StoreDTO> list4 = new ArrayList<StoreDTO>();
		list4 = dao.recomm_store(list2);
		switch (mainNum){
		case 1:
			mainNum = 211001;
			break;
		case 2:
			mainNum = 201016;
			break;
		case 3:
			mainNum = 203013;
			break;
		case 4:
			mainNum = 201011;
			break;
	}
		System.out.println(mainNum);
		
		String moveURL = "";
		if(list2 != null) {
			System.out.println("성공");
			HttpSession session = request.getSession();
			session.setAttribute("list", list);
			session.setAttribute("list2", list2);
			session.setAttribute("list3", list3);
			session.setAttribute("list4", list4);
			session.setAttribute("listNum", listNum);
			session.setAttribute("number", mainNum);
			session.setAttribute("storeNum", storeNum);
			
			moveURL = "Order2.jsp";
		}else{
			System.out.println("실패");
			moveURL = "Order2.jsp";
		}
		
		
		response.sendRedirect(moveURL);
	}

}
