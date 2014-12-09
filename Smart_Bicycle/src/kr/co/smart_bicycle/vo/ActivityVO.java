package kr.co.smart_bicycle.vo;

public class ActivityVO {
	private String day;
	private String id;
	private double temparature;
	private double humidity;
	private int calory;
	private int distanse;
	private String gps_path;
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public double getTemp() {
		return temparature;
	}
	public void setTemp(double temparature) {
		this.temparature = temparature;
	}
	public double getHumi() {
		return humidity;
	}
	public void setHumi(double humidity) {
		this.humidity = humidity;
	}
	public int getCalory() {
		return calory;
	}
	public void setCalory(int calory) {
		this.calory = calory;
	}
	public int getDistanse() {
		return distanse;
	}
	public void setDistanse(int distanse) {
		this.distanse = distanse;
	}
	public String getGps_path() {
		return gps_path;
	}
	public void setGps_path(String gps_path) {
		this.gps_path = gps_path;
	}
	
	

}
