package com.grownited.bean;

import org.springframework.web.multipart.MultipartFile;

public class ProductImageBean {
	Integer productImageId;
	Integer serviceId;
	String imageUrl;
	String name;
	
	MultipartFile imageFile;

	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public MultipartFile getImageFile() {
		return imageFile;
	}
	public void setImageFile(MultipartFile imageFile) {
		this.imageFile = imageFile;
	}
	
	
	
	}
