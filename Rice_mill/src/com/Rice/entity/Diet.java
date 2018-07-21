package com.Rice.entity;
import java.io.Serializable;
public class Diet implements Serializable{
	private static final long serialVersionUID = 1L;
	private String diettheme;
	private String dietinfo;
	private String dietdate;
	private String dietimage;
	public String getDiettheme() {
		return diettheme;
	}
	public String getDietinfo() {
		return dietinfo;
	}
	public String getDietdate() {
		return dietdate;
	}
	public String getDietimage() {
		return dietimage;
	}
	public void setDiettheme(String diettheme) {
		this.diettheme = diettheme;
	}
	public void setDietinfo(String dietinfo) {
		this.dietinfo = dietinfo;
	}
	public void setDietdate(String dietdate) {
		this.dietdate = dietdate;
	}
	public void setDietimage(String dietimage) {
		this.dietimage = dietimage;
	}
	@Override
	public String toString() {
		return "Diet [diettheme=" + diettheme + ", dietinfo=" + dietinfo + ", dietdate=" + dietdate + ", dietimage="
				+ dietimage + "]";
	}
}
