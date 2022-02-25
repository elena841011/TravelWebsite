package com.group1.springboot.bos.model;

import java.io.ByteArrayOutputStream;

import java.io.InputStream;
import java.sql.Blob;
import java.sql.Clob;
import java.util.Base64;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.group1.springboot.wade.Utils.SystemUtils;


@Entity
@Table(name="BosT1")
public class CarBos {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;                     //文章編號	
	
	private String name;                 //文章日期
	
	private String price;               // 標題
	
	private String seat;                // 分類
	
	private String suitcase;             // 標籤
	
	private String  handbag;             // 備註
	
	private String address;              // 內容
	
	private String mimeType;

	
	private String content;                //內容，沒用到
	
	@JsonIgnore
	private Blob picture;                //照片
  
	@Transient
	MultipartFile carImage;
	
	@Transient
	String pictureString;			   //照片
	
	
	public CarBos(Long id, String name, String price,String seat, String suitcase, String handbag, String address, String content,
			Blob picture ,String mimeType) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.seat = seat;
		this.suitcase = suitcase;
		this.handbag = handbag;
		this.address = address;
		this.content = content;
		this.picture = picture;
		this.mimeType = mimeType;
	}


	public CarBos(Long id, String name, String price, String seat, String suitcase, String handbag, String address, String content,
			String mimeType, Blob picture, MultipartFile carImage, String pictureString) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.seat = seat;
		this.suitcase = suitcase;
		this.handbag = handbag;
		this.address = address;
		this.content = content;
		this.mimeType = mimeType;
		this.picture = picture;
		this.carImage = carImage;
		this.pictureString = pictureString;
	}


	//空的建構子,一定要
	public CarBos() {
		super();
	}
  
	

	public String getSeat() {
		return seat;
	}


	public void setSeat(String seat) {
		this.seat = seat;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getSuitcase() {
		return suitcase;
	}


	public void setSuitcase(String longitude) {
		this.suitcase = longitude;
	}


	public String getHandbag() {
		return handbag;
	}


	public void setHandbag(String latitude) {
		this.handbag = latitude;
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


	public MultipartFile getCarImage() {
		return carImage;
	}


	public void setCarImage(MultipartFile carImage) {
		this.carImage = carImage;
	}


	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Car [id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", price=");
		builder.append(price);
		builder.append(", seat=");
		builder.append(seat);
		builder.append(", suitcase=");
		builder.append(suitcase);
		builder.append(", handbag=");
		builder.append(handbag);
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


