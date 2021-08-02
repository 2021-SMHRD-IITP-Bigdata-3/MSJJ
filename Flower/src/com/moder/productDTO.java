package com.moder;

public class productDTO {
	
	private int product_number;
	private String product_flower;
	private String product_name;
	private int product_price;
	private String product_stock;
	private String product_image;
	private String product_mean;
	private String product_purpose;
	private int product_Store;
	
	public productDTO(int product_number, String product_flower, String product_name, int product_price,
			String product_stock, String product_image, String product_mean, String product_purpose,
			int product_store) {
		this.product_number = product_number;
		this.product_flower = product_flower;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_stock = product_stock;
		this.product_image = product_image;
		this.product_mean = product_mean;
		this.product_purpose = product_purpose;
		this.product_Store = product_store;
	}
	public int getProduct_number() {
		return product_number;
	}
	public void setProduct_number(int product_number) {
		this.product_number = product_number;
	}
	public String getProduct_flower() {
		return product_flower;
	}
	public void setProduct_flower(String product_flower) {
		this.product_flower = product_flower;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getProduct_stock() {
		return product_stock;
	}
	public void setProduct_stock(String product_stock) {
		this.product_stock = product_stock;
	}
	public String getProduct_image() {
		return product_image;
	}
	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}
	public String getProduct_mean() {
		return product_mean;
	}
	public void setProduct_mean(String product_mean) {
		this.product_mean = product_mean;
	}
	public String getProduct_purpose() {
		return product_purpose;
	}
	public void setProduct_purpose(String product_purpose) {
		this.product_purpose = product_purpose;
	}
	public int getProduct_store() {
		return product_Store;
	}
	public void setProduct_store(int product_store) {
		this.product_Store = product_store;
	}
	
	
}
