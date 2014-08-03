package spring.web.toyproduct;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.common.parse.GuroRentalShopParsing;
import spring.common.parse.GuroToyParsing;
import spring.domain.Page;
import spring.domain.Search;
import spring.domain.guro.GuroRentalShop;
import spring.domain.guro.GuroToy;
import spring.service.toyproduct.ToyProductService;

@Controller
public class ToyProductController
{
	@Autowired
	@Qualifier("toyProductServiceImpl")
	private ToyProductService toyProductService;
	
	@Value("#{commonProperties['pageSize']}")
	int pageSize;

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	public ToyProductController()
	{
		System.out.println("ToyProductController 기본생성자 호출!!");
	}
	
	@RequestMapping(value="getToyProductList")
	public void getToyProductList() throws Exception
	{
		
	}
	
//	@RequestMapping(value="parsingDataUpdate")
//	public ModelAndView parsingDataUpdate() throws Exception
//	{
//		List<GuroToy> toyList = new GuroToyParsing().getToyData();
////		List<LocationParse> locationList = new LocationParsing().getLocationData();
//		
////		Map<String, Object> parseMap = new HashMap<String, Object>();
//		
////		parseMap.put("toyList", toyList);
////		parseMap.put("locationList", locationList);
//		
//		toyProductService.parsingDataUpdate(toyList);
//		
//		ModelAndView modelAndView = new  ModelAndView();
//		return modelAndView;
//	}
	
//	@RequestMapping(value="guroRentalShopParsing")
//	public ModelAndView guroRentalShopParsing() throws Exception
//	{
//		List<GuroRentalShop> guroRentalShop = new GuroRentalShopParsing().getRentalShopData();
//		
//		toyProductService.guroRentalShopParsing(guroRentalShop);
//		
//		ModelAndView modelAndView = new  ModelAndView();
//		return modelAndView;
//	}
	
	@RequestMapping("/listToyProductList.do")
	public ModelAndView listToyProductList(@ModelAttribute("search") Search search) throws Exception{
		System.out.println("controller 들어왔나요");
		System.out.println("현재 페이지 : "+search.getCurrentPage());
		if(search.getCurrentPage() ==null){
			search.setCurrentPage(1);
		}
		
		search.setPageSize(pageSize);
		
		Map<String, Object> map  = toyProductService.getToyList(search);
		System.out.println("db탔지요?");
		Page resultPage = new Page(search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		
		ModelAndView modelAndView  = new ModelAndView("/toysearch/search.jsp");
		modelAndView.addObject("search", search);
		modelAndView.addObject("page", resultPage);
		modelAndView.addObject("list", map.get("list"));
//		modelAndView.addObject("toy", toy);
		System.out.println("controller 다 탔나요");
		return modelAndView;
		
	}
}
