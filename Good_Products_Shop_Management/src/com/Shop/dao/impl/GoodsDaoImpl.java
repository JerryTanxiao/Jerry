package com.Shop.dao.impl;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import com.Shop.dao.IGoodsDao;
import com.Shop.entity.Goods;
import com.Shop.entity.GoodsVO;
import com.Shop.util.PageResult;
@Repository
public class GoodsDaoImpl  implements IGoodsDao{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	//获取总条数
	@Override
	public int getNumberPageSize() {
		long count=(long)hibernateTemplate.getSessionFactory().getCurrentSession().createQuery("select count(*) from Goods")
		.setMaxResults(1)
		.uniqueResult();
		System.out.println(count);
		return (int) count; 
	}
	/**
	 * 分页查询
	 * currentPage：用户传递的当前页
	 * pageSize：用户传递的页面大小
	 * 返回分页的结果对象
	 */
	@Override
	public PageResult page(int currentPage, int pageSize) {
		List<GoodsVO> listData=getListDataVO(currentPage,pageSize);
		int totalcount=getNumberPageSize();
		PageResult result=new PageResult(listData, totalcount, currentPage, pageSize);
		return result;
	}
	/**
	 * 封装 双向关联
	 */
	@Override
	public List<GoodsVO> getListDataVO(int currentPage, int pageSize) {
		List<Goods> goods=(List<Goods>) hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(" "
				+ "from Goods")
				.setFirstResult((currentPage-1)*pageSize)
				.setMaxResults(pageSize)
				.list();
		List<GoodsVO> vos = new ArrayList<GoodsVO>();
		for(Goods good : goods){
			GoodsVO vo = new GoodsVO();
			vo.setId(good.getId());
			vo.setGoodsimage(good.getGoodsimage());
			vo.setGoodsname(good.getGoodsname());
			vo.setGoodsnumbersales(good.getGoodsnumbersales());
			vo.setGoodsprice(good.getGoodsprice());
			vo.setGoodstime(good.getGoodstime());
			vo.setGid(good.getGoodsType().getId());
			vo.setName(good.getGoodsType().getName());
			vo.setImage(good.getGoodsType().getImage());
			vos.add(vo);
		}
		return vos;
	}
	
	@Override
	public List<Goods> getgoodsbyid(int id) {
		List<Goods> goods = (List<Goods>) hibernateTemplate.find("from Goods where id=?",id);
		return goods;
	}
	/**
	 * ''
	 */
	@Override
	public PageResult pagegoods(int currentPage, int pageSize) {
		List<Goods> listData=(List<Goods>) hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(" "
				+ "from Goods")
				.setFirstResult((currentPage-1)*pageSize)
				.setMaxResults(pageSize)
				.list();
		int totalcount=getNumberPageSize();
		PageResult result=new PageResult(listData, totalcount, currentPage, pageSize);
		return result;
	}
	@Override
	public List<Goods> getGoodsLike(int currentPage, int pageSize, String name) {
		String str=null;
		try {
			 str=new String(name.getBytes("iso-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		List<Goods> list = (List<Goods>) hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("SELECT *"
				+ "FROM t_goods g,t_goodstype gt WHERE CONCAT(IFNULL(g.goodsname,''),IFNULL(gt.name,'')) LIKE '%"+str+"%' and g.goodstypeid=gt.gid")
				.addEntity(Goods.class)
				.setFirstResult((currentPage-1)*pageSize)
				.setMaxResults(pageSize)
				.list();
		return list;
	}
	@Override
	public PageResult pagegoodslike(int currentPage, int pageSize, String name) {
		List<Goods> listData=getGoodsLike(currentPage, pageSize, name);
		int totalcount=getNumberPageSize();
		PageResult result=new PageResult(listData, totalcount, currentPage, pageSize);
		return result;
	}
	/**
	 * 重新封装
	 */
	@Override
	public List<GoodsVO> getGoodsVOLike(int currentPage, int pageSize, String name,String type) {
		List<Goods> goods =null;
		if(type==""){
			goods=(List<Goods>) hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("SELECT *"
					+ "FROM t_goods g,t_goodstype gt WHERE CONCAT(IFNULL(g.goodsname,''),IFNULL(gt.name,'')) LIKE '%"+name+"%' "
							+ "and g.goodstypeid=gt.gid")
					.addEntity(Goods.class)
					.setFirstResult((currentPage-1)*pageSize)
					.setMaxResults(pageSize)
					.list();
		}else if(type.equals("goodsname")){
			goods=(List<Goods>) hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("SELECT * "
					+ "FROM t_goods g,t_goodstype gt WHERE CONCAT(IFNULL(g.goodsname,'')) LIKE '%"+name+"%' and g.goodstypeid=gt.gid")
					.addEntity(Goods.class)
					.setFirstResult((currentPage-1)*pageSize)
					.setMaxResults(pageSize)
					.list();
		}else if(type.equals("goodsTypename")){
			goods=(List<Goods>) hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("SELECT *"
					+ " FROM t_goods g,t_goodstype gt WHERE CONCAT(IFNULL(gt.name,'')) LIKE '%"+name+"%' and g.goodstypeid=gt.gid")
					.addEntity(Goods.class)
					.setFirstResult((currentPage-1)*pageSize)
					.setMaxResults(pageSize)
					.list();
		}
		 System.out.println("goods : " + goods);
		List<GoodsVO> vos = new ArrayList<GoodsVO>();
		for(Goods good : goods){
			GoodsVO vo = new GoodsVO();
			vo.setId(good.getId());
			vo.setGoodsimage(good.getGoodsimage());
			vo.setGoodsname(good.getGoodsname());
			vo.setGoodsnumbersales(good.getGoodsnumbersales());
			vo.setGoodsprice(good.getGoodsprice());
			vo.setGoodstime(good.getGoodstime());
			vo.setGid(good.getGoodsType().getId());
			vo.setName(good.getGoodsType().getName());
			vo.setImage(good.getGoodsType().getImage());
			vos.add(vo);
		}
		return vos;
	}
	
	/**
	 * 模糊查询分页
	 */
	@Override
	public PageResult pagegoodsVOlike(int currentPage, int pageSize, String name,String type) {
		List<GoodsVO> listData = getGoodsVOLike(currentPage, pageSize,name,type);
		int totalcount=getNumberPageSizeVO(name,type);
		PageResult result=new PageResult(listData, totalcount, currentPage, pageSize);
		return result;
	}
	/**
	 * 模糊查询总页数
	 */
	@Override
	public int getNumberPageSizeVO(String name,String type) {
		int count=0;
		if(type==""){
			count = ((BigInteger) hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("SELECT count(*) FROM t_goods g,t_goodstype gt WHERE CONCAT(IFNULL(g.goodsname,''),IFNULL(gt.name,'')) LIKE '%"+name+"%' and g.goodstypeid=gt.gid").list().get(0)).intValue();
		}else if(type.equals("goodsname")){
			count = ((BigInteger) hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("SELECT count(*) FROM t_goods g WHERE CONCAT(IFNULL(g.goodsname,'')) LIKE '%"+name+"%' ").list().get(0)).intValue();
		}else if(type.equals("goodsTypename")){
			count = ((BigInteger) hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("SELECT count(*) FROM t_goods g,t_goodstype gt WHERE CONCAT(IFNULL(gt.name,'')) LIKE '%"+name+"%' and g.goodstypeid=gt.gid").list().get(0)).intValue();
		}
		return (int) count; 
	}
	/**
	 * 封装方法 
	 * @param goods List<Goods>
	 * @return List<GoodsVo>
	 */
	public List<GoodsVO> ListGoodsVo(List<Goods> goods){
		System.out.println("goods: "+  goods);
		List<GoodsVO> vos = new ArrayList<GoodsVO>();
		for(Goods good : goods){
			GoodsVO vo = new GoodsVO();
			vo.setId(good.getId());
			vo.setGoodsimage(good.getGoodsimage());
			vo.setGoodsname(good.getGoodsname());
			vo.setGoodsnumbersales(good.getGoodsnumbersales());
			vo.setGoodsprice(good.getGoodsprice());
			vo.setGoodstime(good.getGoodstime());
			vo.setGid(good.getGoodsType().getId());
			vo.setName(good.getGoodsType().getName());
			vo.setImage(good.getGoodsType().getImage());
			vos.add(vo);
		}
		return vos;
	}
	
	
	@Override
	public List<GoodsVO> getListGoods() {
		List<Goods> goods=(List<Goods>) hibernateTemplate.find("from Goods");
		return  ListGoodsVo(goods);
	}
	
	@Override
	public List<GoodsVO> getListGoods(String type, String value) {
		List<Goods> goods=null;
		if(type==null){
			goods=(List<Goods>) hibernateTemplate.find("from Goods");
		}
		else if(type.equalsIgnoreCase("all")){
			goods=(List<Goods>) hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("SELECT *"
					+ "FROM t_goods g,t_goodstype gt WHERE CONCAT(IFNULL(g.goodsname,''),IFNULL(gt.name,'')) LIKE '%"+value+"%' "
							+ "and g.goodstypeid=gt.gid")
					.addEntity(Goods.class)
					.list();
		}else if(type.equalsIgnoreCase("goodsname")){
			goods=(List<Goods>) hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("SELECT * "
					+ "FROM t_goods g,t_goodstype gt WHERE CONCAT(IFNULL(g.goodsname,'')) LIKE '%"+value+"%' and g.goodstypeid=gt.gid")
					.addEntity(Goods.class)
					.list();
		}else if(type.equalsIgnoreCase("goodsTypename")){
			goods=(List<Goods>) hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("SELECT *"
					+ " FROM t_goods g,t_goodstype gt WHERE CONCAT(IFNULL(gt.name,'')) LIKE '%"+value+"%' and g.goodstypeid=gt.gid")
					.addEntity(Goods.class)
					.list();
		}
		return ListGoodsVo(goods);
	}
	
	
	
	@Override
	public int updateListGoods(GoodsVO goods) {
		int i = hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery(
				"UPDATE  t_goods g,t_goodstype gt SET "
				+ "g.goodsimage=?,g.goodsname=?,g.goodsnumbersales=?,"
				+ "g.goodsprice=?,g.goodstime=?,g.goodstypeid=?,"
				+ "gt.image=?,gt.name=? where g.id=? AND g.goodstypeid=gt.gid;")
				.setParameter(0, goods.getGoodsimage()).setParameter(1, goods.getGoodsname()).setParameter(2,goods.getGoodsnumbersales())
				.setParameter(3, goods.getGoodsprice()).setParameter(4, goods.getGoodstime()).setParameter(5,goods.getGid())
				.setParameter(6, goods.getImage()).setParameter(7, goods.getName()).setParameter(8, goods.getId())
				.executeUpdate();
		return i;
	}
	@Override
	public int deleteListGoods(int id) {
		int i=hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery(
				"delete from t_goods  where id=?").setParameter(0, id).executeUpdate();
		return i;
	}
	@Override
	public 	int saveListGoods(GoodsVO goods) {
		String hql="INSERT INTO t_goods VALUES (?,?, ?,?, ?, ?,?);";
		int i=hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery(hql)
				.setParameter(0, goods.getId()).setParameter(1, goods.getGoodsimage()).setParameter(2,goods.getGoodsname())
				.setParameter(3,goods.getGoodsnumbersales()).setParameter(4, goods.getGoodsprice()).setParameter(5,goods.getGoodstime())
				.setParameter(6, goods.getGid())
				.executeUpdate();
		return  (int) i;
	}
	@Override
	public String saveFilepath(String filename, Goods goods) {
		hibernateTemplate.update(goods.getGoodsimage(),goods.getClass());
		return goods.getGoodsimage();
	}
}
