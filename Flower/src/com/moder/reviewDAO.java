package com.moder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class reviewDAO {
	Connection conn=null;
	PreparedStatement psmt =null;
	int cnt = 0;
	ResultSet rs =null;
	productDTO info =null;
	public void conn() {

		try {
	
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url ="jdbc:oracle:thin:@localhost:1521:xe";
			String dbid="hr";
			String dbpw="hr";
			
			conn = DriverManager.getConnection(url, dbid, dbpw);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//db 문 닫는 메소드
	public void close() {
		try {
			if(rs != null) {
				rs.close();
			}
			if(psmt != null) {
				psmt.close();
			}if(conn != null) {
				conn.close();
			}	
		}
		catch (Exception e) {
				e.printStackTrace();
			}
	}
	public int insertreview(reviewDTO dto) {
		try {
			conn();
			
			String sql ="insert into board values(borad_number_message.nextval, ?,?,?, sysdate)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getBorad_name());
			psmt.setInt(2, dto.getBorad_store());
			psmt.setString(3, dto.getBorad_content());
			psmt.setString(4, dto.getBorad_member());
			psmt.setString(5, dto.getBorad_date());
			
			cnt=psmt.executeUpdate();	
		} catch (Exception e) {
			//
			e.printStackTrace();
		}finally {
			close();
		}return cnt;
	}

public ArrayList<reviewDTO> showreview(String email) {
    ArrayList<reviewDTO> review_list = new ArrayList<reviewDTO>();
    try {
       conn();
       String sql = "select * from board where borad_member=?";
       psmt = conn.prepareStatement(sql);
       psmt.setString(1, email);
       rs = psmt.executeQuery();
       
       while(rs.next()) {
          int borad_number = rs.getInt("borad_number");
          String borad_name = rs.getString("borad_name");
          int borad_flower = rs.getInt("borad_flower");
          int borad_store = rs.getInt("borad_store");
          String borad_content = rs.getString("borad_content");
          String borad_member = rs.getString("borad_member");
          String borad_date = rs.getString("borad_date");
          String borad_score =rs.getString("borad_score");
          reviewDTO dto = new reviewDTO(borad_number, borad_name, borad_flower, borad_store, borad_content, borad_member, borad_date, borad_score);
          review_list.add(dto);
       }
    } catch (SQLException e) {
       e.printStackTrace();
    } finally {
       close();
    }
    return review_list;
 }
public int deleteOnereview(int borad_number) {
	//메시지 개별 삭제 메소드
		try {
			conn();
			String sql ="delete from web_message where num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, borad_number);
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}return cnt;
		
}

}
