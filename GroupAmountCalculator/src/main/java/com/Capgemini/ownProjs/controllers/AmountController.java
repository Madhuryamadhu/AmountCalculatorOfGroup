package com.Capgemini.ownProjs.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Capgemini.ownProjs.AmountDeatils.AmountDeatilsBean;

@Controller
public class AmountController {
	private static final org.apache.logging.log4j.Logger logger = LogManager.getLogger();
  
  @RequestMapping(value = "/testing", method = RequestMethod.POST)
  public @ResponseBody AmountDeatilsBean showLogin(@RequestBody AmountDeatilsBean bean,HttpServletRequest request, HttpServletResponse response) {
      logger.info(bean.toString());
      logger.info(request.toString());
	  logger.debug("yess:::::::::::::::::::::::::::::::::");
	  return bean;
  }
 
}