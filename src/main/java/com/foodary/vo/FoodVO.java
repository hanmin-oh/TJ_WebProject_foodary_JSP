package com.foodary.vo;

public class FoodVO {
	
	private int idx;
	private String foodName;
	private int kcal;
	private int carbs;
	private int protein;
	private int fat;
	
	public FoodVO() {	}

	public FoodVO(int idx, String foodName, int kcal, int carbs, int protein, int fat) {
		this.idx = idx;
		this.foodName = foodName;
		this.kcal = kcal;
		this.carbs = carbs;
		this.protein = protein;
		this.fat = fat;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getFoodName() {
		return foodName;
	}

	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}

	public int getKcal() {
		return kcal;
	}

	public void setKcal(int kcal) {
		this.kcal = kcal;
	}

	public int getCarbs() {
		return carbs;
	}

	public void setCarbs(int carbs) {
		this.carbs = carbs;
	}

	public int getProtein() {
		return protein;
	}

	public void setProtein(int protein) {
		this.protein = protein;
	}

	public int getFat() {
		return fat;
	}

	public void setFat(int fat) {
		this.fat = fat;
	}

	@Override
	public String toString() {
		return "FoodVO [idx=" + idx + ", foodName=" + foodName + ", kcal=" + kcal + ", carbs=" + carbs + ", protein="
				+ protein + ", fat=" + fat + "]";
	}

	
}
