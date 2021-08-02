package com.moder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class productDAO {
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
	public int insertproduct(productDTO dto) {
		 try {
	         // DB 연결 메소드 호출
	         conn();
	         
	         String sql = "insert into product values(?,?,?,?,?,?,?,?,?)";
	         
	         psmt =  conn.prepareStatement(sql);
	         psmt.setInt(1, dto.getProduct_number());
	         psmt.setString(2, dto.getProduct_flower());
	         psmt.setString(3, dto.getProduct_name());
	         psmt.setInt(4, dto.getProduct_price());
	         psmt.setString(5, dto.getProduct_stock());
	         psmt.setString(6, dto.getProduct_image());
	         psmt.setString(7, dto.getProduct_mean());
	         psmt.setString(8, dto.getProduct_purpose());
	         psmt.setInt(9, dto.getProduct_store());
	         
	         cnt = psmt.executeUpdate();
	             
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         // DB 문 닫는 메소드 호출
	         close();
	      } return cnt;
		
	}
	public ArrayList<productDTO> product() {
		ArrayList<productDTO> product_list = new ArrayList<productDTO>();
		try {
			conn();
			String sql ="select * from product where Product_number"; 
			psmt=conn.prepareStatement(sql);
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				int Product_number= rs.getInt("Product_number");
				String Product_flower= rs.getString("Product_flower");
				String Product_name= rs.getString("Product_name");
				int Product_price =rs.getInt("Product_price");
				String Product_stock = rs.getString("Product_stock");
				String Product_image = rs.getString("Product_image");
				String Product_mean= rs.getString("Product_mean");
				String product_purpose= rs.getString("product_purpose");
				String propduct_store= rs.getString("propduct_store");
				
				productDTO dto = new productDTO(product_number, product_flower, product_name, product_price, product_stock, product_image, product_mean, product_purpose, product_store)
				product_list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}return product_list;
	}
	public productDTO matching(String product_number, String product_purpose) {
		
		try {
			conn();
			String sql = "select * from member where product_number=? and product_purpose=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, product_number);
			psmt.setString(2, product_purpose);
			rs= psmt.executeQuery();
			if(rs.next()) {
				int member_number = rs.getInt(1);
				String product_flower = rs.getString(2);
				String product_name = rs.getString(3);
				int product_price = rs.getInt(4);
				String product_stock = rs.getString(5);
				String product_image = rs.getString(6);
				String product_mean = rs.getString(7);
				String product_purpose = rs.getString(8);
				int product_Store = rs.getInt(9);
				
				
				info = new productDTO(product_number, product_flower, product_name, product_price, product_stock, product_image, product_mean, product_purpose, product_store);
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}return info;
	
	}
}
		
	