package com.Capgemini.ownProjs.Login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.logging.log4j.LogManager;

import com.Capgemini.ownProjs.SignUp.SignUpBean;
import com.Capgemini.ownProjs.Login.LoginBean;

public class LoginDao {
	private static final org.apache.logging.log4j.Logger logger = LogManager.getLogger();

	public boolean LoginMailChecking(LoginBean bean) {
		boolean isSuccess=false;
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
			final String DB_URL = "jdbc:mysql://localhost:3306/groupamountcalculator";
			final String USER = "root";
			final String PASS = " ";
			logger.info("Connection parameters::- Driver->"+JDBC_DRIVER+" | URL->"+DB_URL+" | UserName->"+USER+" | Password->"+PASS );

			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(DB_URL,USER,PASS);

			if (conn!=null) {
				logger.info("Connection Establishment success!!!");

				
				String selectSQL = "Select count(*)as count from user_details where MAIL= ?";
				PreparedStatement preparedStatement = conn.prepareStatement(selectSQL);
				preparedStatement.setString(1, bean.getLoginemail());
				//ResultSet rs = preparedStatement.executeQuery(selectSQL);   //This was wrong. I was getting syntax error in query. Solved using link-> https://stackoverflow.com/questions/43833033/why-do-i-get-a-syntax-error-for-prepared-statement
				ResultSet rs = preparedStatement.executeQuery(); 
				int numberOfRows = 0;
				if (rs.next()) {
					numberOfRows = rs.getInt("count");
					logger.info("numberOfRows= " + numberOfRows);
				} else {
					logger.info("error: could not get the record counts");
				}
				if (numberOfRows >= 1) {
					isSuccess = true;
				} else
				{
					isSuccess = false;
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

	
	
	public boolean LoginMailAndPasswordChecking(LoginBean bean) {
		boolean isSuccess=false;
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
			final String DB_URL = "jdbc:mysql://localhost:3306/groupamountcalculator";
			final String USER = "root";
			final String PASS = " ";
			logger.info("Connection parameters::- Driver->"+JDBC_DRIVER+" | URL->"+DB_URL+" | UserName->"+USER+" | Password->"+PASS );

			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(DB_URL,USER,PASS);

			if (conn!=null) {
				logger.info("Connection Establishment success!!!");

				
				String selectSQL = "Select count(*) as count  from user_details where MAIL= ? and PASSWORD= ?";
				PreparedStatement preparedStatement = conn.prepareStatement(selectSQL);
				preparedStatement.setString(1, bean.getLoginemail());
				preparedStatement.setString(2, bean.getLoginpassword());
				//ResultSet rs = preparedStatement.executeQuery(selectSQL);   //This was wrong. I was getting syntax error in query. Solved using link-> https://stackoverflow.com/questions/43833033/why-do-i-get-a-syntax-error-for-prepared-statement
				ResultSet rs = preparedStatement.executeQuery(); 
				int numberOfRows = 0;
				
				if (rs.next()) {
					numberOfRows = rs.getInt("count");
					logger.info("numberOfRows= " + numberOfRows);
				} else {
					logger.info("error: could not get the record counts");
				}
				if (numberOfRows >= 1) {
					isSuccess = true;
				} else
				{
					isSuccess = false;
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
