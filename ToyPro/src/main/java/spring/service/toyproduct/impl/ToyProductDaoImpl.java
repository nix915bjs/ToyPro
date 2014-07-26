package spring.service.toyproduct.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import spring.domain.Search;
import spring.domain.Toy;
import spring.domain.guro.GuroRentalShop;
import spring.domain.guro.GuroToy;
import spring.service.toyproduct.ToyProductDao;

@Repository("toyProductDaoImpl")
public class ToyProductDaoImpl implements ToyProductDao
{
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	public ToyProductDaoImpl()
	{
		System.out.println("ToyProductDaoImpl() 기본생성자 호출!!");
	}
	
	public void setSqlSession(SqlSession sqlSession)
	{
		this.sqlSession = sqlSession;
	}

	@Override
	public int parsingDataUpdate(List<GuroToy> toyList) throws Exception
	{
		System.out.println("여기 좀 타자..");
		// TODO Auto-generated method stub
		int count = 0;
		for(GuroToy guroToy : toyList)
		{
			sqlSession.insert("ToyProductMapper.parsingDataUpdate", guroToy);
			count++;
		}
		return count;
	}

	@Override
	public int guroRentalShopParsing(List<GuroRentalShop> rentalShopList) throws Exception
	{
		// TODO Auto-generated method stub
		int count = 0;
		for(GuroRentalShop guroRentalShop : rentalShopList)
		{
			sqlSession.update("ToyProductMapper.guroRentalShopParsing", guroRentalShop);
			count++;
		}
		return count;
	}
	
	//진솔코딩
	@Override
	public List<Toy> getToyList(Search search) throws Exception {
		System.out.println("dao");
		return sqlSession.selectList("ToyProductMapper.getToyList", search);
	}

	@Override
	public int getTotalCount(Search search) throws Exception {
		return sqlSession.selectOne("ToyProductMapper.getTotalCount", search);
	}
	
	@Override
	public void deleteList() throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete("ToyProductMapper.deleteList");
		
	}
}
