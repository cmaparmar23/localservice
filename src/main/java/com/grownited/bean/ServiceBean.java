package com.grownited.bean;

public class ServiceBean {
	
	
	private Integer serviceId,categoryId,subCategoryId,userId;
	private  String name;
	private String description;
	private Integer qty;
	private Integer price;
	private Boolean mostValueInd;
	private String brandName;
	private String serviceDetailDescriptionURL;
	private boolean deleted;
	private Boolean latestInd;
	private Boolean topSellingInd;
	public Integer getServiceId() {
		return serviceId;
	}
	public void setServiceId(Integer serviceId) {
		this.serviceId = serviceId;
	}
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public Integer getSubCategoryId() {
		return subCategoryId;
	}
	public void setSubCategoryId(Integer subCategoryId) {
		this.subCategoryId = subCategoryId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Integer getQty() {
		return qty;
	}
	public void setQty(Integer qty) {
		this.qty = qty;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Boolean getMostValueInd() {
		return mostValueInd;
	}
	public void setMostValueInd(Boolean mostValueInd) {
		this.mostValueInd = mostValueInd;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getServiceDetailDescriptionURL() {
		return serviceDetailDescriptionURL;
	}
	public void setServiceDetailDescriptionURL(String serviceDetailDescriptionURL) {
		this.serviceDetailDescriptionURL = serviceDetailDescriptionURL;
	}
	public boolean isDeleted() {
		return deleted;
	}
	public void setDeleted(boolean deleted) {
		this.deleted = deleted;
	}
	public Boolean getLatestInd() {
		return latestInd;
	}
	public void setLatestInd(Boolean latestInd) {
		this.latestInd = latestInd;
	}
	public Boolean getTopSellingInd() {
		return topSellingInd;
	}
	public void setTopSellingInd(Boolean topSellingInd) {
		this.topSellingInd = topSellingInd;
	}
	

	
	
	
	
	}
