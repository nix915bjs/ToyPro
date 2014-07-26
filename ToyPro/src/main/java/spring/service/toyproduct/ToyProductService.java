package spring.service.toyproduct;

import java.util.List;
import java.util.Map;

import spring.domain.Search;
import spring.domain.Toy;
import spring.domain.guro.GuroRentalShop;
import spring.domain.guro.GuroToy;

public interface ToyProductService
{
	//�����ڵ�
	public Map<String, Object>getToyList(Search search) throws Exception;
	
	public int parsingDataUpdate(List<GuroToy> toyList) throws Exception;
	
	public int guroRentalShopParsing(List<GuroRentalShop> rentalShopList) throws Exception;
	
	public void deleteList()throws Exception;
}
