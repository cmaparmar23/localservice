package com.grownited.dao;
import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.StatusBean;
import com.grownited.bean.ServiceBean;
import com.grownited.bean.StatusBean;
@Repository

public class StatusDao {
@Autowired
	
	JdbcTemplate stmt;
	//add
	
		
		
		
		public void addStatus(StatusBean StatusBean ) {
			
			String insertQuery = "insert into status (statusId, statusName,deleted) values (?,?,?)";
			stmt.update(insertQuery,StatusBean.getStatusId(),StatusBean.getStatusName(),false);
			
			
			
		}
		public List<StatusBean> getAllStatus() {

		
String selectQuery = "select * from status where deleted = false";
		


		List<StatusBean> listStatus = stmt.query(selectQuery, new BeanPropertyRowMapper<StatusBean>(StatusBean.class));
		return listStatus;
		
		//c1 c2 c3 
		
	

		}
		
		
			
	public void deleteStatus(Integer statusId) {
		// TODO Auto-generated method stub
		String updateQuery=  "delete from status where statusId=?" ;
		stmt.update(updateQuery,statusId);
		
	}
	
	
	//list
	
	

		
	}
	
	//update
	
	//delete
	
	








