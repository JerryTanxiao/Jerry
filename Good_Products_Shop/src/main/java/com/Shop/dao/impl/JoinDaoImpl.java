package com.Shop.dao.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import com.Shop.dao.IJoinDao;
import com.Shop.entity.Join;
@Repository
public class JoinDaoImpl implements IJoinDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Override
	public int saveJoin(Join join) {
		int i=(int) hibernateTemplate.save(join);
		return i;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Join> getJoin(String sql) {
		return (List<Join>) hibernateTemplate.find(sql);
	}

}
