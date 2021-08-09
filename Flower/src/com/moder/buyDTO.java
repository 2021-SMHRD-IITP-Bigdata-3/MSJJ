package com.moder;

public class buyDTO {
	private int buy_number;
	private int buy_productNum;
	private int buy_price;
	private String buy_date;
	private int buy_store;
	private String buy_member;
	private String buy_productName;
	private String buy_productImage;
	private String buy_productStoreName;
	public buyDTO(int buy_number, int buy_productNum, int buy_price, String buy_date, int buy_store, String buy_member,
			String buy_productName, String buy_productImage, String buy_productStoreName) {
		super();
		this.buy_number = buy_number;
		this.buy_productNum = buy_productNum;
		this.buy_price = buy_price;
		this.buy_date = buy_date;
		this.buy_store = buy_store;
		this.buy_member = buy_member;
		this.buy_productName = buy_productName;
		this.buy_productImage = buy_productImage;
		this.buy_productStoreName = buy_productStoreName;
	}
	public int getBuy_number() {
		return buy_number;
	}
	public void setBuy_number(int buy_number) {
		this.buy_number = buy_number;
	}
	public int getBuy_productNum() {
		return buy_productNum;
	}
	public void setBuy_productNum(int buy_productNum) {
		this.buy_productNum = buy_productNum;
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
	public String getBuy_productName() {
		return buy_productName;
	}
	public void setBuy_productName(String buy_productName) {
		this.buy_productName = buy_productName;
	}
	public String getBuy_productImage() {
		return buy_productImage;
	}
	public void setBuy_productImage(String buy_productImage) {
		this.buy_productImage = buy_productImage;
	}
	public String getBuy_productStoreName() {
		return buy_productStoreName;
	}
	public void setBuy_productStoreName(String buy_productStoreName) {
		this.buy_productStoreName = buy_productStoreName;
	}
	
		
}
