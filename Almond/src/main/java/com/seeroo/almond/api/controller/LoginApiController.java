package com.seeroo.almond.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.seeroo.almond.api.dto.ApiLoginRes;
import com.seeroo.almond.api.dto.ApiTestRes;
import com.seeroo.almond.api.service.testService;
import com.seeroo.almond.api.service.impl.testServiceImpl;

@RestController
@RequestMapping(value="/api")
public class LoginApiController extends ApiComnController{
	
	@Autowired
	private testService service;

	@RequestMapping(value="/login")
	public ApiLoginRes SpAppLogin(
			@RequestParam(value="ScDc") String ScDc
			, @RequestParam(value="ScParam") String ScParam
			) {
		ApiLoginRes result = new ApiLoginRes();
		
		try {
			
		} catch (Exception e) {
			super.log.debug(e.toString());
			
		}
		
		return result;
	} 
	
	@RequestMapping(value="/test" ,method= {RequestMethod.GET, RequestMethod.POST})
	public ApiTestRes testApi(@RequestParam(value="id") String id) {
		ApiTestRes result = new ApiTestRes();
		try {
			super.log.debug("id : "+id);
			
//			super.log.debug("DB연결 시작");
//			
//			service.insertTest();
//			
//			super.log.debug("DB연결 끝");
			
			result.setId(id);
			result.setResCode("0000");
			result.setResMsg("꺄~~~ api성공");
			super.log.debug("result : "+result.toString());
		} catch (Exception e) {
			super.log.debug(e.toString());
			result.setResCode("9000");
			result.setResMsg("ㅠㅠ api실패");
		}
		
		
		return result;
	}
	
	@RequestMapping(value="/test2")
	public String test2(@RequestParam(value="id")String id) {
		super.log.debug("시작");
		super.log.debug("param : "+id);
		super.log.debug("REST API 끝");
		return id;
	}
	
	
	
	
	
	
}
