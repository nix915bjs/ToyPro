package spring.service.notice;

import java.util.List;

import spring.domain.Notice;
import spring.domain.Search;

public interface NoticeDao {
	
	public List<Notice> getNoticeList(Search search) throws Exception;

	public int getTotalCount(Search search) throws Exception;
}
