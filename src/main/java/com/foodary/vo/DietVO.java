package com.foodary.vo;

public class DietVO {
   
   private int idx;
   private String dietFoodName;
   private float dietKcal;
   private float dietCarbs;
   private float dietProtein;
   private float dietFat;
   private String dietMemo;
   private String dietPicture;
   private String dietWriteDate;
   private String dietWriteTime;
   
   public int getIdx() {
      return idx;
   }
   public void setIdx(int idx) {
      this.idx = idx;
   }
   public String getDietFoodName() {
      return dietFoodName;
   }
   public void setDietFoodName(String dietFoodName) {
      this.dietFoodName = dietFoodName;
   }
   public float getDietKcal() {
      return dietKcal;
   }
   public void setDietKcal(float dietKcal) {
      this.dietKcal = dietKcal;
   }
   public float getDietCarbs() {
      return dietCarbs;
   }
   public void setDietCarbs(float dietCarbs) {
      this.dietCarbs = dietCarbs;
   }
   public float getDietProtein() {
      return dietProtein;
   }
   public void setDietProtein(float dietProtein) {
      this.dietProtein = dietProtein;
   }
   public float getDietFat() {
      return dietFat;
   }
   public void setDietFat(float dietFat) {
      this.dietFat = dietFat;
   }
   public String getDietMemo() {
      return dietMemo;
   }
   public void setDietMemo(String dietMemo) {
      this.dietMemo = dietMemo;
   }
   public String getDietPicture() {
      return dietPicture;
   }
   public void setDietPicture(String dietPicture) {
      this.dietPicture = dietPicture;
   }
   public String getDietWriteDate() {
      return dietWriteDate;
   }
   public void setDietWriteDate(String dietWriteDate) {
      this.dietWriteDate = dietWriteDate;
   }
   public String getDietWriteTime() {
      return dietWriteTime;
   }
   public void setDietWriteTime(String dietWriteTime) {
      this.dietWriteTime = dietWriteTime;
   }
   
   @Override
   public String toString() {
      return "DietVO [idx=" + idx + ", dietFoodName=" + dietFoodName + ", dietKcal=" + dietKcal + ", dietCarbs="
            + dietCarbs + ", dietProtein=" + dietProtein + ", dietFat=" + dietFat + ", dietMemo=" + dietMemo
            + ", dietPicture=" + dietPicture + ", dietWriteDate=" + dietWriteDate + ", dietWriteTime="
            + dietWriteTime + "]";
   }
   
   

}