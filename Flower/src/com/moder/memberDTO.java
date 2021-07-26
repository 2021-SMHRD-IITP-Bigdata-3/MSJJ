package com.moder;

public class memberDTO {
	private int member_number;
	private String email;
	private String pw;
	private String addr;
	private String birthday;
	private String tel;
	public memberDTO(int member_number, String email, String pw, String addr, String birthday, String tel) {
		super();
		this.member_number = member_number;
		this.email = email;
		this.pw = pw;
		this.addr = addr;
		this.birthday = birthday;
		this.tel = tel;
	}
	public int getMember_number() {
		return member_number;
	}
	public void setMember_number(int member_number) {
		this.member_number = member_number;
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
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
}
