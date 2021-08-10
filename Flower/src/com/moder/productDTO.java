package com.moder;

public class productDTO {
	
	private int product_number;
	private String product_mix;
	private String product_name;
	private int product_type;
	private int product_price;
	private String product_image;
	private String product_recomm;
	private int product_store;
	
	
	public productDTO(int product_number, String product_name, int product_price, String product_image) {
		super();
		this.product_number = product_number;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_image = product_image;
	}

	public productDTO(int product_number, String product_mix, String product_name, int product_type, int product_price,
			String product_image, String product_recomm, int product_store) {
		super();
		this.product_number = product_number;
		this.product_mix = product_mix;
		this.product_name = product_name;
		this.product_type = product_type;
		this.product_price = product_price;
		this.product_image = product_image;
		this.product_recomm = product_recomm;
		this.product_store = product_store;
	}
	
	public int getProduct_number() {
		return product_number;
	}
	public void setProduct_number(int product_number) {
		this.product_number = product_number;
	}
	public String getProduct_mix() {
		return product_mix;
	}
	public void setProduct_mix(String product_mix) {
		this.product_mix = product_mix;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_type() {
		return product_type;
	}
	public void setProduct_type(int product_type) {
		this.product_type = product_type;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getProduct_image() {
		return product_image;
	}
	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}
	public String getProduct_recomm() {
		return product_recomm;
	}
	public void setProduct_recomm(String product_recomm) {
		this.product_recomm = product_recomm;
	}
	public int getProduct_store() {
		return product_store;
	}
	public void setProduct_store(int product_store) {
		this.product_store = product_store;
	}
	
	
	
}
