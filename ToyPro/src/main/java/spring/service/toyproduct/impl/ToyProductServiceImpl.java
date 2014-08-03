package spring.service.toyproduct.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring.domain.Search;
import spring.domain.Toy;
import spring.domain.guro.GuroRentalShop;
import spring.domain.guro.GuroToy;
import spring.service.toyproduct.ToyProductDao;
import spring.service.toyproduct.ToyProductService;

@Service("toyProductServiceImpl")
public class ToyProductServiceImpl implements ToyProductService
{
	@Autowired
	@Qualifier("toyProductDaoImpl")
	private ToyProductDao toyProductDao;
	
	private ToyProductDao toyProductDao2 = new ToyProductDaoImpl();

	public ToyProductServiceImpl()
	{
		System.out.println("ToyProductServiceImpl 기본생성자 호출!!");
	}
	
	public void setToyProductDao(ToyProductDao toyProductDao)
	{
		this.toyProductDao = toyProductDao;
	}

//	@Override
//	public int parsingDataUpdate(List<GuroToy> toyList) throws Exception
//	{
//		// TODO Auto-generated method stub
//		System.out.println(toyProductDao);
//		System.out.println("parsingDataUpdate 메서드 안");
//		return toyProductDao.parsingDataUpdate(toyList);
//	}

	@Override
	public int guroRentalShopParsing(List<GuroRentalShop> rentalShopList) throws Exception
	{
		// TODO Auto-generated method stub
		return toyProductDao.guroRentalShopParsing(rentalShopList);
	}
	
	//진솔코딩
		@Override
		public Map<String, Object> getToyList(Search search) throws Exception{
			System.out.println("서비스 시작");
			List<Toy> list = toyProductDao.getToyList(search);
			int totalCount = toyProductDao.getTotalCount(search);

			Map<String, Object> map = new HashMap<String, Object>();
			map.put("list", list);
			map.put("totalCount", new Integer(totalCount));
			
			
			System.out.println("서비스 끝");
			return map;
		}
		
//		@Override
//		public void deleteList()throws Exception{
//			toyProductDao.deleteList();
//		}
		
		@Override
		public List<String> getToyId() throws Exception
		{
			// TODO Auto-generated method stub
			return toyProductDao.getToyId();
		}

		@Override
		public int guroToyParsing(List<GuroToy> toyList,
				List<String> dbToyIdList) throws Exception {
			// TODO Auto-generated method stub
			return toyProductDao.guroToyParsing(toyList, dbToyIdList);
		}
}
