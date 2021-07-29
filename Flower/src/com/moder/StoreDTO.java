package com.moder;

public class StoreDTO {
	private int Store_number;
	private String Store_name;
	private String Store_tel;
	private String Store_address;
	private String Store_image;
	public StoreDTO(int store_number, String store_name, String store_tel, String store_address, String store_image) {
		super();
		Store_number = store_number;
		Store_name = store_name;
		Store_tel = store_tel;
		Store_address = store_address;
		Store_image = store_image;
	}
	public int getStore_number() {
		return Store_number;
	}
	public void setStore_number(int store_number) {
		Store_number = store_number;
	}
	public String getStore_name() {
		return Store_name;
	}
	public void setStore_name(String store_name) {
		Store_name = store_name;
	}
	public String getStore_tel() {
		return Store_tel;
	}
	public void setStore_tel(String store_tel) {
		Store_tel = store_tel;
	}
	public String getStore_address() {
		return Store_address;
	}
	public void setStore_address(String store_address) {
		Store_address = store_address;
	}
	public String getStore_image() {
		return Store_image;
	}
	public void setStore_image(String store_image) {
		Store_image = store_image;
	}
	
	
	
}
