package com.foodary.vo;

import java.util.ArrayList;

public class WriteFoodList {
	
	private ArrayList<WriteFoodVO> list = new ArrayList<>();
	
	public WriteFoodList() { }

	public WriteFoodList(ArrayList<WriteFoodVO> list) {
		this.list = list;
	}

	public ArrayList<WriteFoodVO> getList() {
		return list;
	}

	public void setList(ArrayList<WriteFoodVO> list) {
		this.list = list;
	}
	
	

}
