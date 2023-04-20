package com.grownited.dao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.ServiceBean;
import com.grownited.bean.SubCategoryBean;
import com.mysql.cj.x.protobuf.MysqlxSql.StmtExecute;


@Repository

public class SubCategoryDao { 
	
	
	@Autowired
	JdbcTemplate stmt;
	public void addSubCategory(SubCategoryBean subCategoryBean ) {
		
		String insertQuery = "insert into subcategory (subcategoryname, categoryId, deleted) values (?,?,?)";
		stmt.update(insertQuery,subCategoryBean.getSubCategoryName(),subCategoryBean.getCategoryId(),false);
		
		
		
	}
	
	public List<SubCategoryBean>getAllSubCategory() {
		String joinQuery= "select c.categoryName,sc.categoryId, sc.subCategoryId,sc.subCategoryName,sc.deleted from category c, subcategory sc  where c.categoryId=sc.categoryId and sc.deleted=false";
		return stmt.query(joinQuery, new BeanPropertyRowMapper<SubCategoryBean>(SubCategoryBean.class));
		
	}
	public void deleteSubCategory(Integer subCategoryId) {
		// TODO Auto-generated method stub
		String updateQuery=  "delete from subcategory where subCategoryId=?" ;
		stmt.update(updateQuery,subCategoryId);
		
	}

	public static SubCategoryBean getSubCategoryById(Integer subCategoryId) {
		
		return stmts.queryForObject("select * from subcategory where subCategoryId = ?", new BeanPropertyRowMapper<>(SubCategoryBean.class),new Object[] { });
	}
	
	public void updateSubCategory(SubCategoryBean subCategory) {
		stmt.update("update subCategory set subCategoryName = ? , categoryId = ? where subCategoryId = ? ",
				subCategory.getSubCategoryName(), subCategory.getCategoryId(), subCategory.getSubCategoryId());
	}

}
	
	
	
	//update
	
	//delete
	
	

