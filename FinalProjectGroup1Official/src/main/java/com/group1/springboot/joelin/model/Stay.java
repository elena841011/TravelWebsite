package com.group1.springboot.joelin.model;

import java.sql.Blob;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.group1.springboot.joelin.Utils.SystemUtils;



@Entity
@Table(name="Taoyuan")
public class Stay {
	
	@Id
	//@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long number;                     //編號	
	
	
	private String hotel;                 //名稱
	
	private Integer price;               //價格
	
	private Double longitude;             //經度
	
	private Double  latitude;             //緯度
	
	private String address;              //地址
	
	private String mimeType;

	
	private String content;                //內容
	
	@JsonIgnore
	private Blob picture;                //照片
  
	@Transient
	MultipartFile stayImage;
	
	@Transient
	String pictureString;
	
	
	public Stay(Long number, String hotel, Integer price, Double longitude, Double latitude, String address,String content,
			Blob picture ,String mimeType) {
		super();
		this.number = number;
		this.hotel = hotel;
		this.price = price;
		this.longitude = longitude;
		this.latitude = latitude;
		this.address = address;
		this.content = content;
		this.picture = picture;
		this.mimeType = mimeType;
	}


	public Stay(Long number, String hotel, Integer price, Double longitude, Double latitude, String address,
			String mimeType, String content, Blob picture, MultipartFile stayImage, String pictureString) {
		super();
		this.number = number;
		this.hotel = hotel;
		this.price = price;
		this.longitude = longitude;
		this.latitude = latitude;
		this.address = address;
		this.mimeType = mimeType;
		this.content = content;
		this.picture = picture;
		this.stayImage = stayImage;
		this.pictureString = pictureString;
	}


	//空的建構子,一定要
	public Stay() {
		super();
	}
  
	

	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public Long getNumber() {
		return number;
	}


	public void setNumber(Long number) {
		this.number = number;
	}


	public Integer getPrice() {
		return price;
	}


	public void setPrice(Integer price) {
		this.price = price;
	}


	public String getHotel() {
		return hotel;
	}


	public void setHotel(String hotel) {
		this.hotel = hotel;
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


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	


	public Blob getPicture() {
		return picture;
	}


	public void setPicture(Blob picture) {
		this.picture = picture;
	}
	
	
	
	
	public String getMimeType() {
		return mimeType;
	}


	public void setMimeType(String mimeType) {
		this.mimeType = mimeType;
	}

	


	public String getPictureString() {
		return SystemUtils.blobToDataProtocol(mimeType, picture);
	}



	public void setPictureString(String pictureString) {
		this.pictureString = pictureString;
	}


	public MultipartFile getStayImage() {
		return stayImage;
	}


	public void setStayImage(MultipartFile stayImage) {
		this.stayImage = stayImage;
	}


	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Stay [number=");
		builder.append(number);
		builder.append(", hotel=");
		builder.append(hotel);
		builder.append(", price=");
		builder.append(price);
		builder.append(", longitude=");
		builder.append(longitude);
		builder.append(", latitude=");
		builder.append(latitude);
		builder.append(", address=");
		builder.append(address);
		builder.append(", content=");
		builder.append(content);
		builder.append(", picture=");
		builder.append(picture);
		builder.append("]");
		return builder.toString();
	}

}


