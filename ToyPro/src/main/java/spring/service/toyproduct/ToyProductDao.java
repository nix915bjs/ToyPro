package spring.service.toyproduct;

import java.util.List;
import java.util.Map;

import spring.domain.Search;
import spring.domain.Toy;
import spring.domain.guro.GuroRentalShop;
import spring.domain.guro.GuroToy;

public interface ToyProductDao
{
	//진솔코딩
	public List<Toy> getToyList(Search search) throws Exception;
	
	public int getTotalCount(Search search) throws Exception;
	
	public int parsingDataUpdate(List<GuroToy> toyList) throws Exception;
	
	public int guroRentalShopParsing(List<GuroRentalShop> rentalShopList) throws Exception;
	
	public void deleteList()throws Exception;
}
