package com.moder;

import javax.management.loading.PrivateClassLoader;

public class reviewDTO {
	private int borad_number;
	private String borad_name;
	private int borad_flower;
	private int borad_store;
	private String borad_content;
	private String borad_member;
	private String borad_date;
	private String borad_score;
	public reviewDTO(int borad_number, String borad_name, int borad_flower, int borad_store, String borad_content,
			String borad_member, String borad_date, String borad_score) {
		super();
		this.borad_number = borad_number;
		this.borad_name = borad_name;
		this.borad_flower = borad_flower;
		this.borad_store = borad_store;
		this.borad_content = borad_content;
		this.borad_member = borad_member;
		this.borad_date = borad_date;
		this.borad_score = borad_score;
	}
	public int getBorad_number() {
		return borad_number;
	}
	public void setBorad_number(int borad_number) {
		this.borad_number = borad_number;
	}
	public String getBorad_name() {
		return borad_name;
	}
	public void setBorad_name(String borad_name) {
		this.borad_name = borad_name;
	}
	public int getBorad_flower() {
		return borad_flower;
	}
	public void setBorad_flower(int borad_flower) {
		this.borad_flower = borad_flower;
	}
	public int getBorad_store() {
		return borad_store;
	}
	public void setBorad_store(int borad_store) {
		this.borad_store = borad_store;
	}
	public String getBorad_content() {
		return borad_content;
	}
	public void setBorad_content(String borad_content) {
		this.borad_content = borad_content;
	}
	public String getBorad_member() {
		return borad_member;
	}
	public void setBorad_member(String borad_member) {
		this.borad_member = borad_member;
	}
	public String getBorad_date() {
		return borad_date;
	}
	public void setBorad_date(String borad_date) {
		this.borad_date = borad_date;
	}
	public String getBorad_score() {
		return borad_score;
	}
	public void setBorad_score(String borad_score) {
		this.borad_score = borad_score;
	}
	
	
}