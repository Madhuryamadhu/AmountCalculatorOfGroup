package com.Capgemini.ownProjs.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Capgemini.ownProjs.AmountDeatils.AmountDeatilsBean;
import com.Capgemini.ownProjs.AmountDeatils.AmountDetailsDao;

@Controller
public class AmountController {
	private static final Logger logger = LogManager.getLogger();

	@RequestMapping(value = "/amountSubmit", method = RequestMethod.POST)
	public @ResponseBody AmountDeatilsBean addAmountDetails(@RequestBody AmountDeatilsBean bean,HttpServletRequest request, HttpServletResponse response) {
		logger.info("Inside addAmountDetails method:-"+bean.toString());
		AmountDetailsDao dao= new AmountDetailsDao();
		try {
                 if(dao.insertAmountDetails(bean)) {
                	 bean.setStatus("S");
                 }else {
                	 bean.setStatus("F");
                 }
		} catch (Exception e) {
		}
		logger.info("returning from addAmountDetails method:-"+bean.toString());
		return bean;
	}

}