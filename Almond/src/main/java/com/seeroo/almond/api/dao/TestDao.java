package com.seeroo.almond.api.dao;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Component;

@Component
public interface TestDao {
	void insertTest() throws DataAccessException;
}
