package com.moder;

public class buyDTO {
	private int buy_number;
	private String buy_product;
	private int buy_price;
	private String buy_date;
	private String buy_purpose;
	private int buy_store;
	private String buy_member;
	public buyDTO(int buy_number, String buy_product, int buy_price, String buy_date, String buy_purpose, int buy_store,
			String buy_member) {
		super();
		this.buy_number = buy_number;
		this.buy_product = buy_product;
		this.buy_price = buy_price;
		this.buy_date = buy_date;
		this.buy_purpose = buy_purpose;
		this.buy_store = buy_store;
		this.buy_member = buy_member;
	}
	public int getBuy_number() {
		return buy_number;
	}
	public void setBuy_number(int buy_number) {
		this.buy_number = buy_number;
	}
	public String getBuy_product() {
		return buy_product;
	}
	public void setBuy_product(String buy_product) {
		this.buy_product = buy_product;
	}
	public int getBuy_price() {
		return buy_price;
	}
	public void setBuy_price(int buy_price) {
		this.buy_price = buy_price;
	}
	public String getBuy_date() {
		return buy_date;
	}
	public void setBuy_date(String buy_date) {
		this.buy_date = buy_date;
	}
	public String getBuy_purpose() {
		return buy_purpose;
	}
	public void setBuy_purpose(String buy_purpose) {
		this.buy_purpose = buy_purpose;
	}
	public int getBuy_store() {
		return buy_store;
	}
	public void setBuy_store(int buy_store) {
		this.buy_store = buy_store;
	}
	public String getBuy_member() {
		return buy_member;
	}
	public void setBuy_member(String buy_member) {
		this.buy_member = buy_member;
	}
	
	
}
