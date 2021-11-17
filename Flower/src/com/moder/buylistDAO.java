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
	ArrayList<buyDTO> listBuy = new ArrayList<buyDTO>();
	
	
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
	
	public int insertBuylist(int productNum, int a, int b,int productPrice, String id, 
			String productName, String productImage, String storeName) {
		try {
			conn();
			String sql = "select product_name from product where product_number= ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, productNum );
			rs = psmt.executeQuery();
			String product_name = "";
			while(rs.next()) {
				if (rs != null) {
					product_name = rs.getNString(1);
				}
			}
			
			sql = "select product_image from product where product_number= ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, productNum );
			rs = psmt.executeQuery();
			String product_image = "";
			while(rs.next()) {
				if (rs != null) {
					product_image = rs.getNString(1);
				}
			}
			
			sql = "select store_name from store where store_num= ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, b);
			rs = psmt.executeQuery();
			String store_name = "";
			while(rs.next()) {
				if (rs != null) {
					store_name = rs.getNString(1);
				}
			}
			sql = "insert into buy values(buy_num_seq.nextval, ?, ?, sysdate,?,?,?,?,?,?)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, productNum);
			psmt.setInt(2, productPrice);
			psmt.setString(3, "a");
			psmt.setInt(4, b);
			psmt.setString(5, id);
			psmt.setString(6, product_name);
			psmt.setString(7, product_image);
			psmt.setString(8, store_name);
			
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			
			e.printStackTrace();
		} finally {
			close();
		}return cnt;
		
	}
	
	public ArrayList<buyDTO> showBuy(String id) {
		try {
			conn();
			
			String sql = "select * from buy where buy_member = ?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				if (rs != null) {
					int num = Integer.parseInt(rs.getString(1));
					int buyNum = Integer.parseInt(rs.getString(2));
					int buyPrice = Integer.parseInt(rs.getString(3));
					String buyDate = rs.getString(4);
					int buyStore = Integer.parseInt(rs.getString(6));
					String buyMember = rs.getString(7);
					String buyProductName = rs.getString(8);
					String buyProductImage = rs.getString(9);
					String buyStoreName = rs.getString(10);
					buyDTO dto = new buyDTO(num, buyNum, buyPrice, buyDate, buyStore, buyMember, buyProductName, buyProductImage, buyStoreName);
					listBuy.add(dto);
				}
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		} finally {
			close();
		} return listBuy;
	}
}
