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
	ArrayList<flowerDTO> list3 = new ArrayList<flowerDTO>();
	ArrayList<StoreDTO> list4 = new ArrayList<StoreDTO>();

	
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
	public ArrayList<mixDTO> recomm_mix(String eventDay, String flowerMean) {
		 try {
	         conn();
	         System.out.println(eventDay);
	         System.out.println(flowerMean);
	         String sql = "select * from mix";
	         
	         psmt =  conn.prepareStatement(sql);
	         rs = psmt.executeQuery();
	         while(rs.next()) {
	        	 String mixFlower = rs.getString(1);
	        	 String mixMent = rs.getNString(2);
	        	 String mixEvent = rs.getNString(3);
	        	 String mixPurpose = rs.getNString(4);
	        	 String[] mean = mixPurpose.split("_");
	        	 String[] event = mixEvent.split("_");
	        	 	if (eventDay.equals("미선택")) {
	        	 		for (int i = 0; i < mean.length; i++) {
							if (mean[i].equals(flowerMean)){
								mixDTO dto = new mixDTO(mixFlower, mixMent, mixEvent, mixPurpose);
								list.add(dto);
							}
						}
					}else if (flowerMean.equals("미선택")) {
						for (int i = 0; i < event.length; i++) {
							if (event[i].equals(eventDay)){
								mixDTO dto = new mixDTO(mixFlower, mixMent, mixEvent, mixPurpose);
								list.add(dto);
							}
						}
					}else {
						for (int i = 0; i < mean.length; i++) {
							if (mean[i].equals(flowerMean) && event[i].equals(eventDay)){
								mixDTO dto = new mixDTO(mixFlower, mixMent, mixEvent, mixPurpose);
								list.add(dto);
							}
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
	
	public ArrayList<productDTO> recomm_product(ArrayList<mixDTO> list, String flowerType) {
		try {
			conn();
			int flowerTypeN = Integer.parseInt(flowerType);
			
			for (int i = 0; i<list.size();i++) {
				String sql = "select * from product where product_mix=? and product_type=?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, list.get(i).getMix_flower());
				psmt.setInt(2, flowerTypeN);
				rs= psmt.executeQuery();
				
				while(rs.next()) {
					if (rs != null) {
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
						System.out.println("dto에 들어감"+productMix);
					}
				}
			}			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}return list2;
	}
	public ArrayList<flowerDTO> recomm_flower(ArrayList<productDTO> list2) {
		try {
			conn();
			String sql = "select * from flower";
			psmt = conn.prepareStatement(sql);
			rs= psmt.executeQuery();
					
			while(rs.next()) {
				if (rs != null) {
					String flowerName = rs.getString(1);
					String flowerMean = rs.getString(2);
					String flowerImage = rs.getString(3);
					flowerDTO dto = new flowerDTO(flowerName, flowerMean, flowerImage);
					list3.add(dto);
				}
			}	
				
					
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}return list3;
		
	}
	
	public ArrayList<StoreDTO> recomm_store(ArrayList<productDTO> list2) {
		try {
			conn();
			
			for (int i = 0; i<list2.size();i++) {
				String sql = "select * from store where store_num=?";
				psmt = conn.prepareStatement(sql);
				psmt.setInt(1, list2.get(i).getProduct_store());
				rs= psmt.executeQuery();
				
				while(rs.next()) {
					if (rs != null) {
						int num = Integer.parseInt(rs.getString(1));
						String storeName = rs.getString(2);
						String storeTel = rs.getString(3);
						String storeAddress = rs.getString(4);
						String storeImage = rs.getString(5);
						StoreDTO dto = new StoreDTO(num, storeName, storeTel, storeAddress, storeImage);
						list4.add(dto);
					}
				}
			}			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}return list4;
		
	}
}
