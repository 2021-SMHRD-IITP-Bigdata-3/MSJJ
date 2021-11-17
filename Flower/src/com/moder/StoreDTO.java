package com.moder;

public class StoreDTO {
	private int store_num;
	private String store_name;
	private String store_tel;
	private String store_adress;
	private String store_image;
	
	public StoreDTO(int store_num, String store_name, String store_tel, String store_adress, String store_image) {
		super();
		this.store_num = store_num;
		this.store_name = store_name;
		this.store_tel = store_tel;
		this.store_adress = store_adress;
		this.store_image = store_image;
	}
	
	public int getStore_num() {
		return store_num;
	}
	public void setStore_num(int store_num) {
		this.store_num = store_num;
	}
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	public String getStore_tel() {
		return store_tel;
	}
	public void setStore_tel(String store_tel) {
		this.store_tel = store_tel;
	}
	public String getStore_adress() {
		return store_adress;
	}
	public void setStore_adress(String store_adress) {
		this.store_adress = store_adress;
	}
	public String getStore_image() {
		return store_image;
	}
	public void setStore_image(String store_image) {
		this.store_image = store_image;
	}
	
	
}

