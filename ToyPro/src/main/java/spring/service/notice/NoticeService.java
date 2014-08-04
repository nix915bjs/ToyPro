package spring.service.notice;

import java.util.Map;

import spring.domain.Search;

public interface NoticeService {

	public Map<String, Object> getNoticeList(Search search) throws Exception;
}
