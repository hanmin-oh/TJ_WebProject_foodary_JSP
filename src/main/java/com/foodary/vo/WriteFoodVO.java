package com.foodary.vo;

public class WriteFoodVO {
	
	private String writeFoodName;
	private float writeKcal;
	private float writeCarbs;
	private float writeProtein;
	private float writeFat;
	private String writeFoodDate;
	private String writeFoodTime;
	
	public WriteFoodVO() {	}
	
	
	
	
	public WriteFoodVO(String writeFoodName, float writeKcal, float writeCarbs, float writeProtein, float writeFat,
			String writeFoodDate, String writeFoodTime) {
		this.writeFoodName = writeFoodName;
		this.writeKcal = writeKcal;
		this.writeCarbs = writeCarbs;
		this.writeProtein = writeProtein;
		this.writeFat = writeFat;
		this.writeFoodDate = writeFoodDate;
		this.writeFoodTime = writeFoodTime;
	}

	
	

	public String getWriteFoodName() {
		return writeFoodName;
	}




	public void setWriteFoodName(String writeFoodName) {
		this.writeFoodName = writeFoodName;
	}




	public float getWriteKcal() {
		return writeKcal;
	}




	public void setWriteKcal(float writeKcal) {
		this.writeKcal = writeKcal;
	}




	public float getWriteCarbs() {
		return writeCarbs;
	}




	public void setWriteCarbs(float writeCarbs) {
		this.writeCarbs = writeCarbs;
	}




	public float getWriteProtein() {
		return writeProtein;
	}




	public void setWriteProtein(float writeProtein) {
		this.writeProtein = writeProtein;
	}




	public float getWriteFat() {
		return writeFat;
	}




	public void setWriteFat(float writeFat) {
		this.writeFat = writeFat;
	}




	public String getWriteFoodDate() {
		return writeFoodDate;
	}




	public void setWriteFoodDate(String writeFoodDate) {
		this.writeFoodDate = writeFoodDate;
	}




	public String getWriteFoodTime() {
		return writeFoodTime;
	}




	public void setWriteFoodTime(String writeFoodTime) {
		this.writeFoodTime = writeFoodTime;
	}




	@Override
	public String toString() {
		return "WriteFoodVO [writeFoodName=" + writeFoodName + ", writeKcal=" + writeKcal + ", writeCarbs=" + writeCarbs
				+ ", writeProtein=" + writeProtein + ", writeFat=" + writeFat + ", writeFoodDate=" + writeFoodDate
				+ ", writeFoodTime=" + writeFoodTime + "]";
	}

	
	
}
