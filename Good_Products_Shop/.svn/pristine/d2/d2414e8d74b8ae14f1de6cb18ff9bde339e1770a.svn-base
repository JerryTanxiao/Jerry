package com.Shop.dao.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import com.Shop.dao.IObjectDao;
@Repository
public class ObjectDaoImpl implements IObjectDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Override
	public int saveObject(Object object) {
			int i=(int) hibernateTemplate.save(object);
			return i;
	}

	@Override
	public int updateObject(Object object) {
			hibernateTemplate.update(object);
			return 1;
	}

	@Override
	public int deleteObject(Object object) {
			hibernateTemplate.delete(object);
			return 1;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object> getObject(Object object, String sql) {
		List<Object> obj = (List<Object>) hibernateTemplate.find(sql);
		return obj;
	}
}
