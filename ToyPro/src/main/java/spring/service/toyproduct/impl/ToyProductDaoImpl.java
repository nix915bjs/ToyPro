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

//	@Override
//	public int parsingDataUpdate(List<GuroToy> toyList) throws Exception
//	{
//		System.out.println("여기 좀 타자..");
//		// TODO Auto-generated method stub
//		int count = 0;
//		for(GuroToy guroToy : toyList)
//		{
//			sqlSession.insert("ToyProductMapper.parsingDataUpdate", guroToy);
//			count++;
//		}
//		return count;
//	}

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
	
//	@Override
//	public void deleteList() throws Exception {
//		// TODO Auto-generated method stub
//		sqlSession.delete("ToyProductMapper.deleteList");
//		
//	}
	
	@Override
	public List<String> getToyId() throws Exception
	{
		// TODO Auto-generated method stub
		return sqlSession.selectList("ToyProductMapper.getToyId");
	}

	@Override
	public int guroToyParsing(List<GuroToy> toyList, List<String> dbToyIdList) throws Exception
	{
//		System.out.println("ToyProductDaoImpl의 guroToyParsing 메서드");
		// TODO Auto-generated method stub
		boolean check = false;
		int insertCount = 0;
		
		for(int i = 0 ; i < toyList.size() ; i++)
		{
			check = false;
			
//			System.out.println("toyList.get("+i+").getToyIdid : "+toyList.get(i).getToyIdid());
//			System.out.println(dbToyIdList.size());
			for(int j = 0 ; j < dbToyIdList.size() ; j++)
			{
//				System.out.println(dbToyIdList.get(j));
				if(toyList.get(i).getToyIdid().equals(dbToyIdList.get(j)))
				{
					check = true;
					continue;
				}
			}
			if(!check)
			{
				sqlSession.insert("ToyProductMapper.guroToyParsing", toyList.get(i));
				insertCount++;
			}
		}
		
		return insertCount;
	}
	
	@Override
	public int[] getToyCount(Search search)throws Exception{
		
		int shopCode[]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30};
		int toyCount[]=new int[30];
		System.out.println("서치 출력이다\n"+search);
		System.out.println("오지물론5");
		
		for(int i=0;i<30;i++){
			search.setShopCode(shopCode[i]);
			toyCount[i]=sqlSession.selectOne("ToyProductMapper.getToyCount", search);
			//toyCount[i]=sqlSession.selectOne("ToyProductMapper.getTotalCount", search);
			System.out.print(toyCount[i]);
		}
		return toyCount;
	}
}
