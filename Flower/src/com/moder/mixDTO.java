package com.moder;

public class mixDTO {
	private String mix_flower;
	private String mix_ment;
	private String mix_event;
	private String mix_purpose;
	
	public mixDTO(String mix_flower, String mix_ment,String mix_event, String mix_purpose) {
		super();
		this.mix_flower = mix_flower;
		this.mix_ment = mix_ment;
		this.mix_event = mix_event;
		this.mix_purpose = mix_purpose;
	}
	
	public String getMix_flower() {
		return mix_flower;
	}
	public void setMix_flower(String mix_flower) {
		this.mix_flower = mix_flower;
	}
	public String getMix_ment() {
		return mix_ment;
	}
	public void setMix_ment(String mix_ment) {
		this.mix_ment = mix_ment;
	}
	public String getMix_event() {
		return mix_event;
	}
	public void setMix_event(String mix_event) {
		this.mix_event = mix_event;
	}
	public String getMix_purpose() {
		return mix_purpose;
	}
	public void setMix_purpose(String mix_purpose) {
		this.mix_purpose = mix_purpose;
	}
}
