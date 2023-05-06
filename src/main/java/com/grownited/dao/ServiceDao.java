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
		
		String insertQuery="insert into service (Name,categoryId,subCategoryId,userId,description,qty,price,topSellingInd, mostValueInd,brandName,serviceDetailDescriptionURL,deleted,latestInd)" + "values(?,?,?,?,?,?,?,?,?,?,?,false,?)";
		stmt.update(insertQuery,serviceBean.getName(),serviceBean.getCategoryId(),
				serviceBean.getSubCategoryId(),serviceBean.getUserId(),
				serviceBean.getDescription(),serviceBean.getQty(),
				serviceBean.getPrice(),serviceBean.getTopSellingInd(),
				serviceBean.getMostValueInd(),serviceBean.getBrandName(),
				serviceBean.getServiceDetailDescriptionURL(),serviceBean.getLatestInd());
		
				//insert//update//delete
		
		
		
	}
	
	
	public ServiceBean getServiceBy(Integer serviceId) {
		return stmt.queryForObject("select s.*,c.CategoryName,sc.subCategoryName from service s,category c, subcategory sc  where s.categoryId  and  s.subcategoryId = sc.subcategoryId and serviceId = ?",
				new BeanPropertyRowMapper<ServiceBean>(ServiceBean.class), new Object[] { serviceId });
	}
	
	
	
	
	
	
	
	public List<ServiceBean> getAllService() {

		String selectQuery = "select * from service where deleted = false";
	


		List<ServiceBean> list = stmt.query(selectQuery, new BeanPropertyRowMapper<ServiceBean>(ServiceBean.class));
		
		//c1 c2 c3 
		
		return list;
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
	
	public List<ServiceBean>getAllLatestServices(){
		return stmt.query(
				"select s.*,c.categoryName,sc.subCategoryName from service s,category c, subCategory sc where s.deleted=false and s.categoryId=c.categoryId and s.subCategoryId=sc.subCategoryId and s.latestInd=1 order by s.serviceId desc",
				new BeanPropertyRowMapper<ServiceBean>(ServiceBean.class));
	}
	
	public List<ServiceBean>getAllTopSellingService(){
		return stmt.query
				("select s.*,c.categoryName,sc.subCategoryName from service s,category c,subCategory sc where s.deleted=false and s.categoryId=c.categoryId and s.subCategoryId=sc.subCategoryId and s.topSellingInd=1 order by s.serviceId desc",
						new BeanPropertyRowMapper<ServiceBean>(ServiceBean.class));
	}
	public void deleteService(Integer serviceId) {
		stmt.update("update service set deleted = true where serviceId = ?",serviceId);
	}
	


}