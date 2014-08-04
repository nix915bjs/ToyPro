package spring.service.notice.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring.domain.Notice;
import spring.domain.Search;
import spring.service.notice.NoticeDao;
import spring.service.notice.NoticeService;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	@Qualifier("noticeDaoImpl")
	private NoticeDao noticeDao;
	
	public NoticeServiceImpl()
	{
		System.out.println("NoticeServiceImpl 기본 생성자 호출!!");
	}
	
	public void setNoticeDao(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}

	@Override
	public Map<String, Object> getNoticeList(Search search) throws Exception {

		
		List<Notice> list = noticeDao.getNoticeList(search);
		int totalCount = noticeDao.getTotalCount(search);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("totalCount", new Integer(totalCount));
		
		return map;
	}

}
