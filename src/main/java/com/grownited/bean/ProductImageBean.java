package com.grownited.bean;

public class ProductImageBean {
	Integer productImageId;
	Integer serviceId;
	String imageUrl;
	String Name;
	boolean deleted;
	
	
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public boolean isDeleted() {
		return deleted;
	}
	public void setDeleted(boolean deleted) {
		this.deleted = deleted;
	}
	public Integer getProductImageId() {
		return productImageId;
	}
	public void setProductImageId(Integer productImageId) {
		this.productImageId = productImageId;
	}
	
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
		
	}
	public Integer getServiceId() {
		return serviceId;
	}
	public void setServiceId(Integer serviceId) {
		this.serviceId = serviceId;
	}
	
	
	}
