package com.moder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	BoardDTO dto = null;
	
public void conn() {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url ="jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid="campus_f4";
			String dbpw="smhrd4";
			
			conn = DriverManager.getConnection(url, dbid, dbpw);
			
					
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

public void close() {
	try {
		if(rs != null) {
			rs.close();
		}
		if(psmt != null) {
			psmt.close();
		}
		if(conn != null) {
			conn.close();
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	}

public int upload(BoardDTO dto) {
	
	try {
		conn();
		String sql = "insert into web_board values(num_board.nextval,?,?,?,?,sysdate)";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getTitle());
		psmt.setString(2, dto.getWriter());
		psmt.setString(3, dto.getFileName());
		psmt.setString(4, dto.getContent());
		
		cnt = psmt.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		close();
	}
	return cnt;
}

public ArrayList<BoardDTO> showBoard() {
	ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
	
	try {
		conn();
		
		String sql = "select * from web_board order by b_date desc";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		while(rs.next()) {
			int num = rs.getInt("num");
			String title = rs.getString("title");
			String writer = rs.getString("writer");
			String fileName = rs.getString("fileName");
			String content = rs.getString("content");
			String b_date = rs.getString("b_date");
			
			BoardDTO dto = new BoardDTO(num, title, writer,fileName,content, b_date);
			list.add(dto);
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		close();
	}
	return list;
}

public BoardDTO showOne(int num){
	
	try {
		conn();
		String sql = "select * from web_board where num=?";
		psmt = conn.prepareStatement(sql);
		psmt.setInt(1, num);
		rs = psmt.executeQuery();
		
		if(rs.next()) {
			String title = rs.getString("title");
			String writer = rs.getString("writer");
			String fileName = rs.getString("fileName");
			String content = rs.getString("content");
			String b_date = rs.getString("b_date");
			
			dto = new BoardDTO(num, title, writer, fileName, content, b_date);
		
		}
	} catch (SQLException e) {
		
		e.printStackTrace();
	}finally {
		close();
	}return dto;
	}
}