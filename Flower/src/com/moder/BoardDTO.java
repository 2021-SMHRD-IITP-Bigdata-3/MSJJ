package com.moder;

public class BoardDTO {
	
	private int board_number;
	
	private String board_content;
	private int board_flower;
	private int board_store;
	private String board_member;
	private String board_date;
	private int board_score;
	
	public BoardDTO(int board_number, String board_content, int board_flower, int board_store, String board_member,
			String board_date, int board_score) {
		super();
		this.board_number = board_number;
		this.board_content = board_content;
		this.board_flower = board_flower;
		this.board_store = board_store;
		this.board_member = board_member;
		this.board_date = board_date;
		this.board_score = board_score;
	}

	public int getBoard_number() {
		return board_number;
	}

	public void setBoard_number(int board_number) {
		this.board_number = board_number;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public int getBoard_flower() {
		return board_flower;
	}

	public void setBoard_flower(int board_flower) {
		this.board_flower = board_flower;
	}

	public int getBoard_store() {
		return board_store;
	}

	public void setBoard_store(int board_store) {
		this.board_store = board_store;
	}

	public String getBoard_member() {
		return board_member;
	}

	public void setBoard_member(String board_member) {
		this.board_member = board_member;
	}

	public String getBoard_date() {
		return board_date;
	}

	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}

	public int getBoard_score() {
		return board_score;
	}

	public void setBoard_score(int board_score) {
		this.board_score = board_score;
	}

		
	
	

	

}
