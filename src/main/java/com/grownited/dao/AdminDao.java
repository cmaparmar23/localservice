package com.grownited.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import com.grownited.bean.OrderChartBean;
import com.grownited.bean.ProfileBean;

import java.util.Calendar;
import java.util.List;


@Repository

public class AdminDao {
	private static final Class<OrderChartBean> OrderChartBean = null;
	@Autowired
	JdbcTemplate stmt; 
	
	public Integer getTotalOrderCountForCurrentDate() {
		
		

			String countQuery = "select count(*) from orders where orderDate = ?";

			// yy-mm-dd

			Calendar c = Calendar.getInstance();

			int yyy = c.get(Calendar.YEAR);
			int mmm = c.get(Calendar.MONTH) + 1;
			
			int ddd = c.get(Calendar.DATE);

			String today = "";

			if (mmm < 10) {
				today = yyy + "-0" + mmm + "-" + ddd;
			} else {
				today = yyy + "-" + mmm + "-" + ddd;
			}
			System.out.println("TODAY => " + today);

			return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });

		}

		public Integer getTotalUserCountForCurrentYear() {

			String countQuery = "select count(*) from orders where orderDate like ?";

			// dd-mm-yyyy

			Calendar c = Calendar.getInstance();

			int yyy = c.get(Calendar.YEAR);

			String today = "%-" + yyy;// 2023

			System.out.println("CURRENT YEAR => " + today);

			return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });
		}

		public Integer getSumOfOrderAmountForCurrentDate() {

			String countQuery = "select sum(totalAmount) from orders where orderDate = ?";

			// yy-mm-dd

			Calendar c = Calendar.getInstance();

			int yyy = c.get(Calendar.YEAR);
			int mmm = c.get(Calendar.MONTH) + 1;
			
			int ddd = c.get(Calendar.DATE);

			String today = "";

			if (mmm < 10) {
				today = yyy + "-0" + mmm + "-" + ddd;
			} else {
				today =yyy + "-" + mmm + "-" + ddd;
			}
			System.out.println("TODAY => " + today);

			return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });

		}

		public void updateImageUrl(ProfileBean profileBean) {
			stmt.update("update users set imageUrl = ? where userId = ?" , profileBean.getImageUrl(),profileBean.getUserId());
			
		}
			
		
		
		
		public List<OrderChartBean> getOrderStats() {
			
			String selectQ = "select month(orderdate) as month , sum(totalAmount) as orderAmount from orders where year(orderDate) = 2023 group by month(orderdate) order by month(orderDate)";
			return stmt.query(selectQ, new BeanPropertyRowMapper<OrderChartBean>(OrderChartBean.class));
			
		}
		
		
		
		
	
	
}