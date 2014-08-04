package spring.web.notice;

import java.awt.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.domain.Page;
import spring.domain.Search;
import spring.service.notice.NoticeService;


@Controller
@RequestMapping("/notice/*")
public class NoticeController {

	@Autowired
	@Qualifier("noticeServiceImpl")
	private NoticeService noticeService;
	

	@Value("#{commonProperties['pageSize']}")
	int pageSize;

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	public NoticeController(){
		System.out.println("NoticeController 기본 생성자 호출");
	}
	
	@RequestMapping(value="noticeList")
	public String noticeList(@ModelAttribute Search search, Model model) throws Exception{
		if(search.getCurrentPage()==null){
			search.setCurrentPage(1);
		}
		
		search.setPageSize(pageSize);
		
		Map<String, Object> map = noticeService.getNoticeList(search);
		
		Page resultPage = new Page(search.getCurrentPage(),((Integer) map.get("totalCount")).intValue(), pageUnit,pageSize);
		
		model.addAttribute("search", search);
		model.addAttribute("page", resultPage);
		model.addAttribute("list", map.get("list"));
		
		return "/notice/notice.jsp";
	}
	
}
