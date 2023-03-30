package com.grownited.dao;

import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.ServiceBean;
@Repository
public class ServiceDao {
	@Autowired
	
	JdbcTemplate stmt;
	//add
	public void addService(ServiceBean serviceBean) {
		
		String insertQuery="insert into service (Name,categoryId,subCategoryId,userId,description,qty,price,topSellinglnd,mostValuelnd,brandName,serviceDetailDescriptionURL,deleted) values(?,?,?,?,?,?,?,?,?,?,?,?)";
		stmt.update(insertQuery,serviceBean.getName(),serviceBean.getCategoryId(),serviceBean.getSubCategoryId(),serviceBean.getUserId(),serviceBean.getDescription(),serviceBean.getQty(),serviceBean.getPrice(),serviceBean.getTopSellinglnd(),serviceBean.getMostValuelnd(),serviceBean.getBrandName(),serviceBean.getServiceDetailDescriptionURL(),false);
		
				//insert//update//delete
		
		
		
	}
	public List<ServiceBean> getAllService() {

		String selectQuery = "select * from service where deleted = false";
		


		List<ServiceBean> list = stmt.query(selectQuery, new BeanPropertyRowMapper<ServiceBean>(ServiceBean.class));
		
		//c1 c2 c3 
		
		return list;
	}
	public void deleteService(Integer serviceId) {
		// TODO Auto-generated method stub
		String updateQuery=  "delete from service where serviceId=?" ;
		stmt.update(updateQuery,serviceId);
		
	}
	
	
	//list
	
	
	
	public ServiceBean getServiceById(Integer serviceId) {
		ServiceBean serviceBean = null;
		try {
			
		serviceBean = 	stmt.queryForObject("select * from service where serviceId = ?",new BeanPropertyRowMapper<ServiceBean>(ServiceBean.class), new Object[] {serviceId});
			
		} catch(Exception e) {
			System.out.println("ServiceDao : : getServiceById()");
			System.out.println(e.getMessage());
			
		}
		return serviceBean;
		
	}
	
	//update
	
	//delete
	
	

}
