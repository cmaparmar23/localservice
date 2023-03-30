package com.grownited.dao;


import java.util.List;
import java.sql.Date;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.OrderBean;
import com.grownited.bean.ServiceBean;
import com.grownited.bean.OrderBean;
@Repository

public class OrderDao {
@Autowired
	
	JdbcTemplate stmt;
	//add
	
		
		
		
		public void addOrder(OrderBean OrderBean ) {
			
			String insertQuery = "insert into orders (userId,orderDate,totalAmount,addressId,status, deleted) values (?,?,?,?,?,?)";
			stmt.update(insertQuery,OrderBean.getUserId(),OrderBean.getOrderDate(),OrderBean.getTotalAmount(),OrderBean.getAddressId(),OrderBean.getStatus(),false);
			
			
			
		}
		public List<OrderBean> getAllOrder() {

		
String selectQuery = "select * from orders where deleted = false";
		


		List<OrderBean> list = stmt.query(selectQuery, new BeanPropertyRowMapper<OrderBean>(OrderBean.class));
		return list;
		
		//c1 c2 c3 
		
	

		}
		
		
			
	public void deleteOrder(Integer orderId) {
		// TODO Auto-generated method stub
		String updateQuery=  "update orders set deleted = true where orderId=? " ;
		stmt.update(updateQuery,orderId);
		
	}
	
	
	//list
	
	

		
	}
	
	//update
	
	//delete
	
	








