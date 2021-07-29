package com.moder;

public class flowerDTO {
	
	private int flower_number;
	private String flower_name;
	private String flower_price;
	private String flower_event;
	private String flower_image;
	public flowerDTO(int flower_number, String flower_name, String flower_price, String flower_event,
			String flower_image) {
		super();
		this.flower_number = flower_number;
		this.flower_name = flower_name;
		this.flower_price = flower_price;
		this.flower_event = flower_event;
		this.flower_image = flower_image;
	}
	public int getFlower_number() {
		return flower_number;
	}
	public void setFlower_number(int flower_number) {
		this.flower_number = flower_number;
	}
	public String getFlower_name() {
		return flower_name;
	}
	public void setFlower_name(String flower_name) {
		this.flower_name = flower_name;
	}
	public String getFlower_price() {
		return flower_price;
	}
	public void setFlower_price(String flower_price) {
		this.flower_price = flower_price;
	}
	public String getFlower_event() {
		return flower_event;
	}
	public void setFlower_event(String flower_event) {
		this.flower_event = flower_event;
	}
	public String getFlower_image() {
		return flower_image;
	}
	public void setFlower_image(String flower_image) {
		this.flower_image = flower_image;
	}
	
	
}
