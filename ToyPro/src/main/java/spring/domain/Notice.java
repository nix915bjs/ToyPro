package spring.domain;

import java.sql.Date;

/*
NOTICE_CODE                               NOT NULL NUMBER(38)
SUBJECT                                   NOT NULL VARCHAR2(255)
REG_DATE                                  NOT NULL DATE
NOTICE_COUNT                              NOT NULL NUMBER(38)
WRITER                                    NOT NULL VARCHAR2(20)
NOTICE_CONTENT                            NOT NULL CLOB
ATTACHMENT                                         VARCHAR2(50)*/

public class Notice {
	private int noticeCode;
	private String subject;
	private Date regDate;
	private int noticeCount;
	private String writer;
	private String noticeContent;
	private String attachment;
	
	public Notice(){}

	public int getNoticeCode() {
		return noticeCode;
	}

	public void setNoticeCode(int noticeCode) {
		this.noticeCode = noticeCode;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getNoticeCount() {
		return noticeCount;
	}

	public void setNoticeCount(int noticeCount) {
		this.noticeCount = noticeCount;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public String getAttachment() {
		return attachment;
	}

	public void setAttachment(String attachment) {
		this.attachment = attachment;
	}

	@Override
	public String toString() {
		return "Notice [noticeCode=" + noticeCode + ", subject=" + subject
				+ ", regDate=" + regDate + ", noticeCount=" + noticeCount
				+ ", writer=" + writer + ", noticeContent=" + noticeContent
				+ ", attachment=" + attachment + "]";
	}
	
	
}
