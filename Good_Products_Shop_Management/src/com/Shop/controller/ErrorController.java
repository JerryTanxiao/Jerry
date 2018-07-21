package com.Shop.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
@ControllerAdvice
public class ErrorController {
	
	@ExceptionHandler
	public String exceptionHandler(Exception e){
		return "forward:/WEB-INF/jsp/error.jsp";
	}
}
