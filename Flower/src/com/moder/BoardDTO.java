package com.moder;

public class BoardDTO {
	
	private int num;
	private String email;
	private String content;
	private String b_date;
	private String name;
	private String tel;
	private String pw;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public BoardDTO(String email, String content) {
		super();
		this.email = email;
		this.content = content;
	}
	public BoardDTO(String pw, String name, String tel) {
		super();
		this.pw = pw;
		this.name = name;
		this.tel = tel;
	}
	public BoardDTO(int num, String email, String content, String b_date) {
		super();
		this.num = num;
		this.email = email;
		this.content = content;
		this.b_date = b_date;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getB_date() {
		return b_date;
	}
	public void setB_date(String b_date) {
		this.b_date = b_date;
	}
	
}
