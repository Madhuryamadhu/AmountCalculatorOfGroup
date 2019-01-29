package com.Capgemini.ownProjs.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Capgemini.ownProjs.Login.LoginBean;
import com.Capgemini.ownProjs.Login.LoginDao;
import com.Capgemini.ownProjs.SignUp.SignUpBean;
import com.Capgemini.ownProjs.SignUp.SignUpDao;

@Controller
public class SignUpLoginController {
	private static final org.apache.logging.log4j.Logger logger = LogManager.getLogger();

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public @ResponseBody SignUpBean signup(@RequestBody SignUpBean bean,HttpServletRequest request, HttpServletResponse response) {
		logger.info("Inside signUp method:-"+bean.toString());
		SignUpDao dao= new SignUpDao();
		try {
			

			if(dao.signupmailExists(bean)) {
				bean.setEmailstatus("S");   //success
				logger.info("Mail exists!!!");
			}else {
				bean.setEmailstatus("F");   //failure
				logger.info("Mail not exists!!!");
				
				if(dao.signMeUp(bean)) {
					bean.setStatus("S");   //success
					logger.info("Sign Up success!!!");
				}else {
					bean.setStatus("F");   //failure
					logger.info("Sign Up failure!!!");
				}
			}
			

			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		logger.info("Returning from signUp method:-"+bean.toString());
		return bean;
	}


	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public @ResponseBody LoginBean login(@RequestBody LoginBean bean,HttpServletRequest request, HttpServletResponse response) {
		logger.info("Inside login method:-"+bean.toString());
		LoginDao dao= new LoginDao();
		try {
			if(dao.LoginMailChecking(bean)) {
				bean.setLoginmailstatus("S");   //success
				logger.info("S");
			}else {
				bean.setLoginmailstatus("F");   //failure
				logger.info("F");
			}

			if(dao.LoginMailAndPasswordChecking(bean)) {
				bean.setLoginmailandpasswordstatus("S");   //success
				logger.info("S");
			}else {
				bean.setLoginmailandpasswordstatus("F");   //failure
				logger.info("F");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		logger.info("Returning from login method:-"+bean.toString());
		return bean;
	}
	
	

}