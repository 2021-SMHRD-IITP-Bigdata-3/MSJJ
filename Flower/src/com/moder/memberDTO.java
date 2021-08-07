package com.moder;

public class memberDTO {

	private String email;
	private String pw;
	private String name;
	private String tel;
	
	
	public memberDTO(String pw, String name, String tel) {
		super();
		this.pw = pw;
		this.name = name;
		this.tel = tel;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public memberDTO(String name, String email, String pw, String tel) {
		super();
		this.name = name;
		this.email = email;
		this.pw = pw;
		this.tel = tel;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
}
