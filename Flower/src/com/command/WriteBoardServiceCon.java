package com.command;

import java.io.IOException;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.copy.BoardDAO;
import com.model.copy.BoardDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/WriteBoardServiceCon")
public class WriteBoardServiceCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		// 1. �̹��� ���
		// getServletContext : ���� ����
		// getRealPath : ���� ���
		// ������ ������ ��θ� ����(�����)
		String savePath = request.getServletContext().getRealPath("img");
		System.out.println(savePath);
		
		// 2. �̹��� ũ��
		// �̹��� ũ�⸦ ���� : �̹��� ȭ���� ���Ƽ� �뷮�� ũ�ϱ� ������ ������ �ʹ� ���� �����ؼ� �̹��� ũ�� ����
		// 5MB
		// 1kb = 1024byte
		// 1mb = 1024kb
		int maxSize = 5*1024*1024;
		
		// 3. �̹����� ���ڵ� ���
		String encoding = "EUC-KR";
		
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String title = multi.getParameter("text");
		String writer = multi.getParameter("star");
		
		
		// 
		String fileName = URLEncoder.encode(multi.getFilesystemName("fileName"),"EUC-KR");
		
		
		System.out.println(title);
		System.out.println(writer);
		System.out.println(content);
		System.out.println(fileName);
		
		BoardDTO dto = new BoardDTO(title, writer, fileName, content);
		BoardDAO dao = new BoardDAO();
		
		int cnt = dao.upload(dto);
		
		if(cnt > 0) {
			System.out.println("�̹��� ���ε� ����");
		}else {
			System.out.println("�̹��� ���ε� ����");
		}
		response.sendRedirect("index.jsp");
	}

}
