package com.moder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class mainDAO {
	Connection conn=null;
	PreparedStatement psmt =null;
	int cnt = 0;
	ResultSet rs =null;
	memberDTO info =null;
	ArrayList<mixDTO> list = new ArrayList<mixDTO>();
	ArrayList<productDTO> list2 = new ArrayList<productDTO>();
	ArrayList<flowerDTO> list3 = new ArrayList<flowerDTO>();
	ArrayList<StoreDTO> list4 = new ArrayList<StoreDTO>();
	int day = 0;
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
	
	public int dDay(){
		try {
	         conn();
	         String sql = "select event_date - sysdate from event";
	         
	         psmt =  conn.prepareStatement(sql);
	         rs = psmt.executeQuery();
	         
	         while(rs.next()) {
	        	 String dday = rs.getString(1);
	        	 int dday2 = Integer.parseInt(dday);
	        	 	if (dday2 > 0) {
	        	 		day = dday2;
					}
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         // DB 문 닫는 메소드 호출
	         close();
	      }	return day;
	}
}
