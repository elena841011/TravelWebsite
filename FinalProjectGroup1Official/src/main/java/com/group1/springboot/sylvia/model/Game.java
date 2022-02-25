package com.group1.springboot.sylvia.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="GameV1")
public class Game {
    
	@Id
	//@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long number;                //手機號碼
	
	String nickname;            //暱稱
	String boxname;              //寶藏名稱
	String email;               //email
	Double longitude;            //經度
	Double latitude;             //緯度
	String tip1;                 //提示一
	String tip2;                 //提示二
	String tip3;                 //提示三
	
	
	
	
	
	public Game() {
		super();
	}
	

	public Game(Long number, String nickname, String email, Double longitude, Double latitude, String boxname,
			String tip1, String tip2, String tip3) {
		super();
		this.number = number;
		this.nickname = nickname;
		this.email = email;
		this.longitude = longitude;
		this.latitude = latitude;
		this.boxname = boxname;
		this.tip1 = tip1;
		this.tip2 = tip2;
		this.tip3 = tip3;
	}


	public Long getNumber() {
		return number;
	}

	public void setNumber(Long number) {
		this.number = number;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Double getLongitude() {
		return longitude;
	}

	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}


	public Double getLatitude() {
		return latitude;
	}

	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}

	public String getBoxname() {
		return boxname;
	}

	public void setBoxname(String boxname) {
		this.boxname = boxname;
	}


	public String getTip1() {
		return tip1;
	}

	public void setTip1(String tip1) {
		this.tip1 = tip1;
	}

	public String getTip2() {
		return tip2;
	}

	public void setTip2(String tip2) {
		this.tip2 = tip2;
	}

	public String getTip3() {
		return tip3;
	}

	public void setTip3(String tip3) {
		this.tip3 = tip3;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Game [number=");
		builder.append(number);
		builder.append(", nickname=");
		builder.append(nickname);
		builder.append(", email=");
		builder.append(email);
		builder.append(", longitude=");
		builder.append(longitude);
		builder.append(", latitude=");
		builder.append(latitude);
		builder.append(", boxname=");
		builder.append(boxname);
		builder.append(", tip1=");
		builder.append(tip1);
		builder.append(", tip2=");
		builder.append(tip2);
		builder.append(", tip3=");
		builder.append(tip3);
		builder.append("]");
		return builder.toString();
	}
	
	
	
}
