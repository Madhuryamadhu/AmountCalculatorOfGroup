package com.Capgemini.ownProjs.AmountDeatils;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.commons.lang.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.Capgemini.ownProjs.Common.ConnectionParam;

public class AmountDetailsDao {
	private static final Logger logger = LogManager.getLogger();

	public boolean insertAmountDetails(AmountDeatilsBean bean) {
		boolean isSuccess=false;
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			final String JDBC_DRIVER = ConnectionParam.DRIVER;
			final String DB_URL = ConnectionParam.URL;
			final String USER = ConnectionParam.USERNAME;
			final String PASS =ConnectionParam.PASSWORD;
			logger.info("Connection parameters::- Driver->"+JDBC_DRIVER+" | URL->"+DB_URL+" | UserName->"+USER+" | Password->"+PASS );

			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(DB_URL,USER,PASS);

			String nameComma=StringUtils.join(bean.getName(), ",");
			String amountComma=StringUtils.join(bean.getAmount(), ",");
			String reasonComma=	StringUtils.join(bean.getReason(), ",");	
			if (conn!=null) {
				//insert into `amount_details` (`SEQ_ID`, `NAMES`, `AMOUNTS`, `REASONS`, `CREATE_DATE`, `USER_EMAIL`, `USER_ID`) values('1','Test1,Test2,Test3','30,40,50','-,test,test2','2019-01-30 00:03:58','Paddum105@gmail.com','3');
				
				Long date=new java.util.Date().getTime();
				String sql = "insert into amount_details (NAMES, AMOUNTS, REASONS, CREATE_DATE, USER_EMAIL, USER_ID) "
						+ "values(?,?,?,?,?,?);";
				stmt = conn.prepareStatement(sql);
				
				stmt.setString(1, nameComma);
				stmt.setString(2, amountComma);
				stmt.setString(3, reasonComma);
				stmt.setDate(4, new Date(date));
				stmt.setString(5, bean.getUserMail());
				stmt.setInt(6, 1);

				int rows = stmt.executeUpdate();
				logger.info("Rows impacted : " + rows );
				if(rows>=1)
				{
					isSuccess=true;
				}		
			}else {
				logger.info("Connection Establishment failed!!!");
			}

		} catch(SQLException se){
			se.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(stmt!=null)
					stmt.close();
			}catch(SQLException se2){
				se2.printStackTrace();
			}
			try{
				if(conn!=null)
					conn.close();
			}catch(SQLException se){
				se.printStackTrace();
			}
		}
		return isSuccess;
	}
}
