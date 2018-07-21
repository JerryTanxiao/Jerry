package com.Rice.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.Rice.entity.Diet;
import com.Rice.mapper.DietMapper;
import com.Rice.service.IDietService;
@Service
public class DietServiceImpl implements IDietService {
	@Autowired
	DietMapper dietMapper;
	@Override
	public Diet getDietByDiettheme(String diettheme) {
		return dietMapper.getDietByDiettheme(diettheme);
	}
}
