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

public int upload(int productNum, int score, int storeNum, String content, String email) {
	
	try {
		conn();
		String sql = "insert into board values(board_num_seq.nextval,?,?,?,?,sysdate,?)";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, content);
		psmt.setInt(2, productNum);
		psmt.setInt(3, storeNum);
		psmt.setString(4, email);
		psmt.setInt(5, score);
		
		cnt = psmt.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		close();
	} return cnt;
}

public ArrayList<BoardDTO> showBoard() {
	ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
	
	try {
		conn();
		
		String sql = "select * from board order by board_date desc";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		while(rs.next()) {
			int board_number = rs.getInt("board_number");
			String content = rs.getNString("board_content");
			int productNum = rs.getInt("board_flower");
			int storeNum = rs.getInt("board_store");
			String email = rs.getNString("board_member");
			String date = rs.getNString("board_date");
			int score = rs.getInt("board_score");
			BoardDTO dto = new BoardDTO(board_number, content, productNum, storeNum, email, date, score);
			list.add(dto);
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		close();
	}
	return list;
}

public ArrayList<BoardDTO> showProductBoard(int a) {
	ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
	
	try {
		conn();
		
		String sql = "select * from board where board_flower = ? order by board_date desc";
		psmt = conn.prepareStatement(sql);
		psmt.setInt(1, a);
		rs = psmt.executeQuery();
		
		while(rs.next()) {
			int board_number = rs.getInt("board_number");
			String content = rs.getNString("board_content");
			int productNum = rs.getInt("board_flower");
			int storeNum = rs.getInt("board_store");
			String email = rs.getNString("board_member");
			String date = rs.getNString("board_date");
			int score = rs.getInt("board_score");
			BoardDTO dto = new BoardDTO(board_number, content, productNum, storeNum, email, date, score);
			list.add(dto);
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		close();
	}
	return list;
}

	public ArrayList<productDTO> showOne(int productNum) {
		ArrayList<productDTO> list = new ArrayList<productDTO>();
		try {
			conn();
			
			String sql = "select * from product where product_number = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, productNum);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int product_number = rs.getInt("product_number");
				String product_name = rs.getNString("product_name");	
				int product_price = rs.getInt("product_price");
				String product_image = rs.getNString("product_image");
				productDTO dto = new productDTO(product_number, product_name, product_price, product_image);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	
	public ArrayList<BoardDTO> showOneBoard(int a) {
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		
		try {
			conn();
			
			String sql = "select * from board where board_number = ? order by board_date desc";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, a);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int board_number = rs.getInt("board_number");
				String content = rs.getNString("board_content");
				int productNum = rs.getInt("board_flower");
				int storeNum = rs.getInt("board_store");
				String email = rs.getNString("board_member");
				String date = rs.getNString("board_date");
				int score = rs.getInt("board_score");
				BoardDTO dto = new BoardDTO(board_number, content, productNum, storeNum, email, date, score);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}


}