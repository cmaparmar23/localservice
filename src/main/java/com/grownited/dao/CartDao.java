package com.grownited.dao;

import java.util.List;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.CartBean;
import com.grownited.bean.ServiceBean;
import com.grownited.bean.CartBean;
import com.grownited.bean.CartBean;
@Repository


public class CartDao {
	
	
@Autowired
	
	JdbcTemplate stmt;
	//add
	
		
		
		
		public void addToCart(CartBean CartBean ) {
			
			String insertQuery = "insert into cart (qty, userId,serviceId, deleted) values (?,?,?,?)";
			stmt.update(insertQuery,CartBean.getQty(),CartBean.getUserId(),CartBean.getServiceId(),false);
			
			
			
		}
		public List<CartBean> getAllCart() {

		
String selectQuery = "select * from cart where deleted = false";
		


		List<CartBean> listCart = stmt.query(selectQuery, new BeanPropertyRowMapper<CartBean>(CartBean.class));
		return listCart;
		
		//c1 c2 c3 
		
	

		}
		
		
			
	public void deleteCart(Integer cartId) {
		// TODO Auto-generated method stub
		String updateQuery=  "delete from cart where cartId=?" ;
		stmt.update(updateQuery,cartId);
		
	}
	public CartBean getCartById(Integer cartId) {
		CartBean cartBean = null;
		try {
			
		cartBean = 	stmt.queryForObject("select * from cart where cartId = ?",new BeanPropertyRowMapper<CartBean>(CartBean.class), new Object[] {cartId});
			
		} catch(Exception e) {
			System.out.println("CartDao : : getCartById()");
			System.out.println(e.getMessage());
			
		}
		return cartBean;
		
	}
	
	
	//list
	
	

		
	}
	
	//update
	
	//delete
	
	





