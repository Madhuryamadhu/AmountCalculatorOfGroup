package com.Capgemini.ownProjs.AmountDeatils;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map.Entry;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.Capgemini.ownProjs.Common.ConnectionParam;

public class AmountDetailsDao {
	private static final Logger logger = LogManager.getLogger();

	public boolean insertAmountDetails(AmountDeatilsBean bean,HttpSession session) {
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
			String userId = new SimpleDateFormat("ddMMyyyyHmmss").format(new java.util.Date());
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
				stmt.setString(6, userId);

				int rows = stmt.executeUpdate();
				logger.info("Rows impacted : " + rows );
				if(rows>=1)
				{
					session.setAttribute("USER_ID", userId);
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

	public AmountDeatilsBean getMessagesToDisplay(AmountDeatilsBean bean, HttpSession session) {
		boolean isSuccess=false;
		int result =0;
		int[] numbers =null;
		HashMap<String, Integer> hmap =null;
		try {
			//get name and amount string from db
			if(getNameandAmount(bean)) {
				String[] nameList=bean.getNamesComma().split(",");
				String[] amtList = bean.getAmountsComma().split(",");
				
				logger.info("AamountList:------"+Arrays.toString(amtList));

				numbers=new int[amtList.length];
				for(int i = 0;i < amtList.length;i++)
				{
					numbers[i] = Integer.parseInt(amtList[i]);
				}
				for (int i = 0; i <numbers.length; i++) {
					result = result+numbers[i];
				}

				
				logger.info("Total Amount " + result);
				//Adding totalAMount to show in front end
				bean.setTotalAmount(result+"");
				
				
				hmap= new HashMap<String, Integer>();
				for (int j = 0; j <amtList.length; j++) {
					int amt=numbers[j];
					System.out.println(amt);
					if(!(hmap.containsKey(nameList[j])))
					{
						hmap.put(nameList[j], numbers[j]);
						
					}else{
						hmap.put(nameList[j], hmap.get(nameList[j])+amt);
					}
				}
				
				System.out.println("Total Person:- " + hmap.size());
				//Adding totalPerson to show in front end
				bean.setTotalPerson(hmap.size()+"");
				
				result=result/(hmap.size());
				System.out.println("Per head:- " + result);
				//Adding perHeadAmount to show in front end
				bean.setPerHeadAmount(result+"");
				
				
				//==========below is the example how we should send to jsp and append to 'deatilsMessage' id
				/*
				 * <h2>Amount Refund Details</h2> 
				 * <div id="totAmountDetails">Total Amount:-100 | Total Person:-1 | Per Head:-100</div> 
				 * <font class="yellowMessage"><strong>Akshay have paid 100 and that is enough!!</strong></font><br>
				 * <font class="greenMessage"><strong>Latha have paid 200 and should get back Rs 100!!</strong></font><br>
				 * <font class="redMessage"><strong>Madhurya have paid 0 and should pay Rs 100 more!!</strong></font><br>
				 */
				
				StringBuilder htmlMessage=new StringBuilder();
				htmlMessage.append("<h2>Amount Refund Details</h2>");
				htmlMessage.append("<div id=\"totAmountDetails\">Total Amount:-"+bean.getTotalAmount()+" | Total Person:-"+bean.getTotalPerson()+" | Per Head:-"+bean.getPerHeadAmount()+"</div>");
				
				for (Entry<String, Integer> entry : hmap.entrySet()) {
				    if(entry.getValue()>result)
					{
				    	htmlMessage.append("<font class=\"greenMessage\"><strong>"+entry.getKey() + " have paid "+entry.getValue()+" and should get back " +(entry.getValue()-result)+"!!!"+"</strong></font><br>");
					}else if(entry.getValue()<result)
					{
						htmlMessage.append("<font class=\"redMessage\"><strong>"+entry.getKey() + " have paid "+entry.getValue()+" and should pay " +(result-entry.getValue()) +" more!!!"+"</strong></font><br>");
					}else if(entry.getValue()==result) {
						htmlMessage.append("<font class=\"yellowMessage\"><strong>"+entry.getKey() + " have paid " + entry.getValue() + " thats enough"+"</strong></font><br>");
					}
				}

				bean.setMessageHtml(htmlMessage.toString());			
                  

			}
		} catch (Exception e) {
		}
		return bean;
	}

	public boolean getNameandAmount(AmountDeatilsBean bean) {
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

			if (conn!=null) {
				String selectSQL = "SELECT NAMES,AMOUNTS FROM amount_details WHERE USER_ID=?";
				PreparedStatement preparedStatement = conn.prepareStatement(selectSQL);
				preparedStatement.setString(1, bean.getUserId());
				ResultSet rs = preparedStatement.executeQuery();
				while (rs.next()) {
					bean.setNamesComma(rs.getString("NAMES"));
					bean.setAmountsComma(rs.getString("AMOUNTS"));	
				}
				isSuccess=true;
			}else {
				logger.info("Connection Establishment failed!!!");
			}

		}catch(SQLException se){
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
