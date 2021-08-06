package com.moder;

public class flowerDTO {
	
	private String flower_name;
	private String flower_mean;
	private String flower_image;
	
	
	
	public flowerDTO(String flower_name, String flower_mean, String flower_image) {
		super();
		this.flower_name = flower_name;
		this.flower_mean = flower_mean;
		this.flower_image = flower_image;
	}
	
	
	
	public String getFlower_name() {
		return flower_name;
	}
	public void setFlower_name(String flower_name) {
		this.flower_name = flower_name;
	}
	public String getFlower_mean() {
		return flower_mean;
	}
	public void setFlower_mean(String flower_mean) {
		this.flower_mean = flower_mean;
	}
	public String getFlower_image() {
		return flower_image;
	}
	public void setFlower_image(String flower_image) {
		this.flower_image = flower_image;
	}
	
	
			
}
