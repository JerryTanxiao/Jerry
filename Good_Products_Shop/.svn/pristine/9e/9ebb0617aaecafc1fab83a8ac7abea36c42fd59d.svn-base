package com.Shop.service.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.Shop.dao.IObjectDao;
import com.Shop.service.IObjectService;
@Service
public class ObjectService implements IObjectService {
	@Autowired
	private IObjectDao objectdao;
	@Override
	public List<Object> getObject(Object object, String sql) {
			return objectdao.getObject(object, sql);
	}
	@Override
	public int saveObject(Object object) {
			return objectdao.saveObject(object);
	}
	@Override
	public int updateObject(Object object) {
			return objectdao.updateObject(object);
	}
	@Override
	public int deleteObject(Object object) {
		return objectdao.deleteObject(object);
	}
	
}
