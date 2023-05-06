package com.grownited.dao;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.AddressBean;
@Repository
public class AddressDao {
	@Autowired
	static
	
	JdbcTemplate stmt;
	//add
	public void addAddress(AddressBean addressBean) {
		
		String insertQuery="insert into address (addressLine,landMark,pincode,city,state,userId,deleted) values(?,?,?,?,?,?,?)";
		stmt.update(insertQuery,addressBean.getAddressLine(),addressBean.getLandMark(),addressBean.getPincode(),addressBean.getCity(),addressBean.getState(),addressBean.getUserId(),false);
		
				//insert//update//delete
		
		
		
	}
	public List<AddressBean> getAllAddress() {

		String selectQuery = "select * from address where deleted = false";
		


		List<AddressBean> list = stmt.query(selectQuery, new BeanPropertyRowMapper<AddressBean>(AddressBean.class));
		
		//c1 c2 c3 
		
		return list;
	}
	public void deleteAddress(Integer addressId) {
		// TODO Auto-generated method stub
		String updateQuery=  "delete from address where addressId=?" ;
		stmt.update(updateQuery,addressId);
		
	}
	
	
	//list
	
	
	
		
	
	public static List<AddressBean> getAllAddressByUser(Integer userId) {
	
		return stmt.query("select * from address where userId = ?", new BeanPropertyRowMapper<>(AddressBean.class),
				new Object[] { userId });
	}
	
	//update
	
	//delete
	
	

}
