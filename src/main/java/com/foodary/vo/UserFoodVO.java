package com.foodary.vo;

public class UserFoodVO {
	
	private String userFoodName;
	private float userKcal;
	private float userCarbs;
	private float userProtein;
	private float userFat;
	private String userFoodDate;
	private String userFoodTime;
	
	public UserFoodVO() {	}
	
	public UserFoodVO(String userFoodName, float userKcal, float userCarbs, float userProtein, float userFat,
			String userFoodDate, String userFoodTime) {
		this.userFoodName = userFoodName;
		this.userKcal = userKcal;
		this.userCarbs = userCarbs;
		this.userProtein = userProtein;
		this.userFat = userFat;
		this.userFoodDate = userFoodDate;
		this.userFoodTime = userFoodTime;
	}

	public String getuserFoodName() {
		return userFoodName;
	}

	public void setuserFoodName(String userFoodName) {
		this.userFoodName = userFoodName;
	}

	public float getuserKcal() {
		return userKcal;
	}

	public void setuserKcal(float userKcal) {
		this.userKcal = userKcal;
	}

	public float getuserCarbs() {
		return userCarbs;
	}

	public void setuserCarbs(float userCarbs) {
		this.userCarbs = userCarbs;
	}

	public float getuserProtein() {
		return userProtein;
	}

	public void setuserProtein(float userProtein) {
		this.userProtein = userProtein;
	}

	public float getuserFat() {
		return userFat;
	}

	public void setuserFat(float userFat) {
		this.userFat = userFat;
	}

	public String getuserFoodDate() {
		return userFoodDate;
	}

	public void setuserFoodDate(String userFoodDate) {
		this.userFoodDate = userFoodDate;
	}

	public String getuserFoodTime() {
		return userFoodTime;
	}

	public void setuserFoodTime(String userFoodTime) {
		this.userFoodTime = userFoodTime;
	}

	@Override
	public String toString() {
		return "UserFoodVO [userFoodName=" + userFoodName + ", userKcal=" + userKcal + ", userCarbs=" + userCarbs
				+ ", userProtein=" + userProtein + ", userFat=" + userFat + ", userFoodDate=" + userFoodDate
				+ ", userFoodTime=" + userFoodTime + "]";
	}
	
}
