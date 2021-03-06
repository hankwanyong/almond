package com.hky.almond.api.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.hky.almond.api.dao.TestDao;
import com.hky.almond.api.service.testService;

@Service
public class testServiceImpl implements testService {

	@Autowired
	private TestDao dao;
	
	@Override
	public void insertTest() throws DataAccessException {
		dao.insertTest();
	}

}
