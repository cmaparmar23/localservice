package com.grownited.dao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.ProductImageBean;

@Repository
public class ProductImageDao {
	
	@Autowired
	JdbcTemplate stmt;

	public void saveProductImage(ProductImageBean pb) {
		stmt.update("insert into productimage (serviceId,imageUrl,deleted) values (?,?,?)", pb.getServiceId(), pb.getImageUrl(),false);

	}

	public List<ProductImageBean> getAllProductImages() {
		return stmt.query("select * from productimage,service where service.serviceid = productimage.serviceid",
				new BeanPropertyRowMapper<>(ProductImageBean.class));
	}

	public void deleteProductImage(Integer productImageId) {
		stmt.update("delete from productimage where productimageid  = ?", productImageId);

	}
	public List<ProductImageBean> getImagesByProductId(Integer serviceId) {
		return stmt.query("select * from productimage where serviceId = ?",
				new BeanPropertyRowMapper<>(ProductImageBean.class), new Object[] { serviceId });
	}
	
	
	

}
