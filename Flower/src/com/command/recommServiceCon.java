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
import com.moder.flowerDTO;
import com.moder.memberDAO;
import com.moder.mixDTO;
import com.moder.productDTO;
import com.moder.recommDAO;


@WebServlet("/recommServiceCon")
public class recommServiceCon extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String eventDay = request.getParameter("eventDay");
		String flowerMean = request.getParameter("flowerMean");
		String flowerType = request.getParameter("flowerType");
		System.out.println(eventDay);
		System.out.println(flowerMean);
		
		ArrayList<mixDTO> list = new ArrayList<mixDTO>();
		recommDAO dao = new recommDAO();
		list = dao.recomm_mix(eventDay, flowerMean);
		
		ArrayList<productDTO> list2 = new ArrayList<productDTO>();
		list2 = dao.recomm_product(list, flowerType);
		
		ArrayList<flowerDTO> list3 = new ArrayList<flowerDTO>();
		list3 = dao.recomm_flower(list2);
		
		ArrayList<StoreDTO> list4 = new ArrayList<StoreDTO>();
		list4 = dao.recomm_store(list2);
		
		String moveURL = "";
		if(list2 != null) {
			System.out.println("����");
			HttpSession session = request.getSession();
			session.setAttribute("list", list);
			session.setAttribute("list2", list2);
			session.setAttribute("list3", list3);
			session.setAttribute("list4", list4);
			moveURL = "Choiceflower.jsp";
		}else{
			System.out.println("����");
			moveURL = "Choiceflower.jsp";
		}
		
		
		response.sendRedirect(moveURL);
	}

}
