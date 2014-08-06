package spring.service.notice.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import spring.domain.Notice;
import spring.domain.Search;
import spring.service.notice.NoticeDao;

@Repository
public class NoticeDaoImpl implements NoticeDao {
	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	public NoticeDaoImpl()
	{
		System.out.println("NoticeDaoImpl 기본생성자 호출!!");
	}

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<Notice> getNoticeList(Search search) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("NoticeMapper.getNoticeList", search);
	}

	@Override
	public int getTotalCount(Search search) throws Exception {
		// TODO Auto-generated method stub
		return (Integer)sqlSession.selectOne("NoticeMapper.getTotalCount", search);
	}

}
