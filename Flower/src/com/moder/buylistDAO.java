package com.moder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.sun.corba.se.spi.legacy.connection.GetEndPointInfoAgainException;

public class buylistDAO {
	Connection conn=null;
	PreparedStatement psmt =null;
	int cnt = 0;
	ResultSet rs =null;
	
	
	
//	
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
//
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
	
	public int insertBuylist(int productNum, int a, int b,int productPrice, String id) {
		try {
			conn();
			
			String sql = "insert into buy values(buy_num_seq.nextval, ?, ?, sysdate,?,?,?)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, productNum);
			psmt.setInt(2, productPrice);
			psmt.setString(3, "a");
			psmt.setInt(4, b);
			psmt.setString(5, id);
			
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			
			e.printStackTrace();
		} finally {
			close();
		}return cnt;
		
	}
}
