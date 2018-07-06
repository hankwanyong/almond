package com.hky.almond.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.hky.almond.api.dto.ApiLoginRes;
import com.hky.almond.api.dto.ApiTestRes;
import com.hky.almond.api.service.testService;

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
	public ApiTestRes testApi(@RequestParam(value="id") String id) throws DataAccessException {
		ApiTestRes result = new ApiTestRes();
		try {
			super.log.info("id : "+id);
			
			super.log.debug("DB연결 시작");
			
			service.insertTest();
			
			super.log.debug("DB연결 끝");
			
			result.setId(id);
			result.setResCode("0000");
			result.setResMsg("꺄~~~ api성공");
			super.log.info("result : "+result.toString());
		} catch (DataAccessException e) {
			super.log.info(e.toString());
			result.setResCode("9000");
			result.setResMsg("ㅠㅠ api실패");
		}catch (Exception e) {
			super.log.info(e.toString());
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
