package spring.web.toyproduct;

import java.util.List;
import java.util.Map;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
		System.out.println("ToyProductController �⺻������ ȣ��!!");
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
		System.out.println("controller ���Գ���");
		System.out.println("���� ������ : "+search.getCurrentPage());
		if(search.getCurrentPage() ==null){
			search.setCurrentPage(1);
		}
		
		search.setPageSize(pageSize);
		
		Map<String, Object> map  = toyProductService.getToyList(search);
		System.out.println("db������?");
		Page resultPage = new Page(search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		
		ModelAndView modelAndView  = new ModelAndView("/toysearch/search.jsp");
		modelAndView.addObject("search", search);
		modelAndView.addObject("page", resultPage);
		modelAndView.addObject("list", map.get("list"));
//		modelAndView.addObject("toy", toy);
		System.out.println("controller �� ������");
		return modelAndView;
		
	}
	
	@RequestMapping(value="/showCount/{searchConditionAge}/{searchConditionCate}/{searchKeyword}")
	public @ResponseBody String showCount(@PathVariable String searchConditionCate, @PathVariable String searchConditionAge,@PathVariable String searchKeyword) throws Exception
	{
		System.out.println("��Ʈ�ѷ�");
		
		Search search=new Search();
		if(search.getCurrentPage() ==null){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		search.setSearchConditionAge(searchConditionAge);
		search.setSearchConditionCate(searchConditionCate);
		search.setSearchKeyword(searchKeyword);
		System.out.println(search);
		int a[] = toyProductService.getToyCount(search);
		ObjectMapper objectMapper =
				new ObjectMapper();
		String jsonCount = objectMapper.writeValueAsString(a);
		return jsonCount;
	}
}
