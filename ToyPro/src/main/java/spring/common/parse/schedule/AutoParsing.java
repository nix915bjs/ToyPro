package spring.common.parse.schedule;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;




import org.springframework.web.servlet.ModelAndView;

import spring.common.parse.GuroRentalShopParsing;
import spring.common.parse.GuroToyParsing;
import spring.domain.guro.GuroRentalShop;
import spring.domain.guro.GuroToy;
import spring.service.toyproduct.ToyProductService;

public class AutoParsing {
	@Autowired
	@Qualifier("toyProductServiceImpl")
	private ToyProductService toyProductService;
	
	
	public void deleteList() throws Exception{
		toyProductService.deleteList();
	}
	
	public void parsingDataUpdate() throws Exception	{
		List<GuroToy> toyList = new GuroToyParsing().getToyData();
		
		toyProductService.parsingDataUpdate(toyList);

	}
	
	public void guroRentalShopParsing() throws Exception
	{
		List<GuroRentalShop> guroRentalShop = new GuroRentalShopParsing().getRentalShopData();
		
		toyProductService.guroRentalShopParsing(guroRentalShop);
		
	}
}
