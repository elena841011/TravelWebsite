package com.group1.springboot.milton.model;

import java.io.Serializable;
import java.text.NumberFormat;
import java.util.ArrayList;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.group1.springboot.milton.model.ProductInfo;
import com.group1.springboot.milton.model.ProductType;

@Entity
@Table(name="Cart")
public class Cart  {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int orderId;
	Integer productid;
	String productname;
	Integer productquantity;
	Integer productprice;
	Integer productamount;
	Integer userOrderId;
	Integer customerId;
	
	
	@OneToOne
	@JoinColumn(name = "productinfo")
	ProductInfo productinfo;
	
	public Integer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	
	
	
	public Integer getUserOrderId() {
		return userOrderId;
	}

	public void setUserOrderId(Integer userOrderId) {
		this.userOrderId = userOrderId;
	}

	
	public ProductInfo getProductInfo() {
		return productinfo;
	}

	public void setProductInfo(ProductInfo productInfo) {
		this.productinfo = productInfo;
	}

	public Integer getProductid() {
		return productid;
	}

	public void setProductid(Integer productid) {
		this.productid = productid;
	}

	
	

	public Cart() {
		
	}

	

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public Integer getProductquantity() {
		return productquantity;
	}

	public void setProductquantity(Integer productquantity) {
		this.productquantity = productquantity;
	}


	public Integer getProductprice() {
		return productprice;
	}

	public void setProductprice(Integer productprice) {
		this.productprice = productprice;
	}

	public Integer getProductamount( ) {		
		return productamount;
	}

	public void setProductamount(Integer productamount) {
		
		this.productamount = productamount;
	}


	
public Cart(Integer productid, String productname, Integer productquantity, Integer productprice,
			Integer productamount, Integer userOrderId, Integer customerId) {
		super();
		this.productid = productid;
		this.productname = productname;
		this.productquantity = productquantity;
		this.productprice = productprice;
		this.productamount = productamount;
		this.userOrderId = userOrderId;
		this.customerId = customerId;
	}

	//	public String getTotalCurrencyFormat() {
//		NumberFormat currency = NumberFormat.getCurrencyInstance();
//		return currency.format(this.getTotal());
//	}
	public double getTotal() {
		double total = productprice * productquantity;
		return total;
	}



}
