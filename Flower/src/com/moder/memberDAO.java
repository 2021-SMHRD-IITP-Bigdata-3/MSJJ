package com.moder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.sun.corba.se.spi.legacy.connection.GetEndPointInfoAgainException;

public class memberDAO {
	
	Connection conn=null;
	PreparedStatement psmt =null;
	int cnt = 0;
	ResultSet rs =null;
	memberDTO info =null;
	//1.ojdbc.jar import 하기
	
	
	//DB 연결 메소드
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
	public int join(memberDTO dto) {
		 try {
	         // DB 연결 메소드 호출
	         conn();
	         
	         String sql = "insert into web_member values(?,?,?,?,?,?)";
	         
	         psmt =  conn.prepareStatement(sql);
	         
	         
	         psmt.setInt(1, dto.getMember_number());
	         psmt.setString(2, dto.getEmail());
	         psmt.setString(3, dto.getPw());
	         psmt.setString(4, dto.getAddr());
	         psmt.setString(5, dto.getBirthday());
	         psmt.setString(6, dto.getTel());
	         
	         cnt = psmt.executeUpdate();
	             
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         // DB 문 닫는 메소드 호출
	         close();
	      } return cnt;
		
	}
	public memberDTO login(String email, String pw) {
		try {
			conn();
			String sql = "select * from web_member where email=? and pw=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(2, getemail);
			psmt.setString(3, getpw);
			rs= psmt.executeQuery();
			if(rs.next()) {
				int member_number = rs.getInt(1);
				String email = rs.getString(2);
				String pw = rs.getString(3);
				String addr = rs.getString(4);
				String birthday = rs.getString(5);
				String tel = rs.getString(6);
				
				info = new memberDTO(member_number, email, pw, addr, birthday, tel);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}return info;
		
	}
	
}
