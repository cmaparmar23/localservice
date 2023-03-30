package com.grownited.dao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.OrderDeatailBean;
@Repository

public class OrderDeatailDao {
@Autowired
	
	JdbcTemplate stmt;
	//add
	public void addOrderDeatail(OrderDeatailBean orderDeatailBean) {
		
		String insertQuery="insert into orderDeatail (orderId,userId,serviceId,qty,price,statusId,deleted) values(?,?,?,?,?,?,?)";
		stmt.update(insertQuery,orderDeatailBean.getOrderId(),orderDeatailBean.getUserId(),orderDeatailBean.getServiceId(),orderDeatailBean.getQty(),orderDeatailBean.getPrice(),orderDeatailBean.getStatusId(),false);
		
				//insert//update//delete
		
		
		
	}
	public List<OrderDeatailBean> getAllOrderDeatail() {

		String selectQuery = "select * from orderDeatail where deleted = false";
		


		List<OrderDeatailBean> list = stmt.query(selectQuery, new BeanPropertyRowMapper<OrderDeatailBean>(OrderDeatailBean.class));
		
		//c1 c2 c3 
		
		return list;
	}
	public void deleteOrderDeatail(Integer orderDeatailId) {
		// TODO Auto-generated method stub
		String updateQuery=  "delete from orderDeatail where orderDeatailId=?" ;
		stmt.update(updateQuery,orderDeatailId);
		
	}
	
	
	//list
	
	
	
	public OrderDeatailBean getOrderDeatailById(Integer orderDeatailId) {
		OrderDeatailBean orderDeatailBean = null;
		try {
			
		orderDeatailBean = 	stmt.queryForObject("select * from orderDeatail where orderDeatailId = ?",new BeanPropertyRowMapper<OrderDeatailBean>(OrderDeatailBean.class), new Object[] {orderDeatailId});
			
		} catch(Exception e) {
			System.out.println("OrderDeatailDao : : getOrderDeatailById()");
			System.out.println(e.getMessage());
			
		}
		return orderDeatailBean;
		
	}
	
	//update
	
	//delete
	
	

}

	

