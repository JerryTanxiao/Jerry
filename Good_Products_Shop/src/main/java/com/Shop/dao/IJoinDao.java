package com.Shop.dao;
import java.util.List;
import com.Shop.entity.Join;
public interface IJoinDao {
	public int saveJoin(Join join);
	public List<Join> getJoin(String sql);
}
