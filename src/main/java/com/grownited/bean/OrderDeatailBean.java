package com.grownited.bean;

public class OrderDeatailBean {
	private Integer orderDeatailId;
	private Integer orderId;
	private Integer userId;
	private Integer serviceId;
	private Integer qty;
	private Integer price;
	private String statusId;
	boolean deleted;
	
	public Integer getOrderDeatailId() {
		return orderDeatailId;
	}
	public void setOrderDeatailId(Integer orderDeatailId) {
		this.orderDeatailId = orderDeatailId;
	}
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
	public Integer getServiceId() {
		return serviceId;
	}
	public void setServiceId(Integer serviceId) {
		this.serviceId = serviceId;
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
	
	public String getStatusId() {
		return statusId;
	}
	public void setStatusId(String statusId) {
		this.statusId = statusId;
	}
	public boolean isDeleted() {
		return deleted;
	}
	public void setDeleted(boolean deleted) {
		this.deleted = deleted;
	}

}
