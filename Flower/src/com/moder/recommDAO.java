package com.moder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class recommDAO {
	Connection conn=null;
	PreparedStatement psmt =null;
	int cnt = 0;
	ResultSet rs =null;
	memberDTO info =null;
	ArrayList<mixDTO> list = new ArrayList<mixDTO>();
	ArrayList<productDTO> list2 = new ArrayList<productDTO>();

	
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
	
// 
	public ArrayList<mixDTO> recomm_mix(String eventday, String flowermean) {
		 try {
	         conn();
	              
	         String sql = "select * from flower_mix";
	         
	         psmt =  conn.prepareStatement(sql);
				
				rs= psmt.executeQuery();
				while(rs.next()) {
					String mixflower = rs.getNString(1);
					String mixment = rs.getNString(2);
					String mixevent = rs.getNString(3);
					String mixpurpose = rs.getNString(4);
					String[] mean = mixpurpose.split("_");
					String[] event = mixevent.split("_");
					for (int i = 0; i < mean.length; i++) {
						if (mean[i].equals(flowermean) && event[i].equals(eventday)){
							mixDTO dto = new mixDTO(mixflower, mixment, mixevent, mixpurpose);
							list.add(dto);
						}
					}
				}
	             
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         // DB 문 닫는 메소드 호출
	         close();
	      } return list;
		
	}
	
	public ArrayList<productDTO> recomm_product(ArrayList<mixDTO> list) {
		try {
			conn();
			for (int i = 0; i<list.size();i++) {
				String sql = "select * from product where product_mix=?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, list.get(i).getMix_flower());
				rs= psmt.executeQuery();
				
				if(rs.next()) {
					int num = Integer.parseInt(rs.getString(1));
					String productMix = rs.getString(2);
					String productName = rs.getString(3);
					int productType = Integer.parseInt(rs.getString(4));
					int productPrice = Integer.parseInt(rs.getString(5));
					String productImage = rs.getString(6);
					String productRecomm = rs.getString(7);
					int productStore = Integer.parseInt(rs.getNString(8));
					productDTO dto = new productDTO(num, productMix, productName, productType, productPrice, productImage, productRecomm, productStore);
					list2.add(dto);
				}
			}			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}return list2;
	}
	
}
