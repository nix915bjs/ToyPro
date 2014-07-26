package spring.domain;

public class Page
{
	// �������� ���� ��� ������ �߻�ȭ ĸ��ȭ
	// �ʵ�
	private int currentPage; // ���� ������
	private int totalCount; // �� �Խù� ��
	private int pageUnit; // �ϴ� ������ ��ȣ ȭ�鿡 �������� ��, ��) 5�� [1] [2] [3] [4] [5]
	private int pageSize; // �� �������� �������� �Խù� ��, �Խù��� row ��
	private int maxPage; // �ִ� ������ ��ȣ(��ü ������)
	private int beginUnitPage; // ȭ�鿡 �������� ������ ��ȣ�� �ּҼ�
	private int endUnitPage; // ȭ�鿡 �������� ������ ��ȣ�� �ִ��
	
	// ������
	public Page()
	{
		
	}
	// jsp�� ������ �� �������� begin, endUnitPage ����
	public Page(int currentPage, int totalCount, int pageUnit, int pageSize)
	{
		// Page �����ڸ� ȣ������ �� �� �Խù��� ���� �� �� ���� ������ �ʵ� �ʱ�ȭ x
		this.currentPage = currentPage; // 1
		this.totalCount = totalCount;
		this.pageUnit = pageUnit; // 5
		this.pageSize = pageSize; // 3
		
		// �� ������ ���� totalCount / pageSize �ϵ�..
		// �� �Խù� ������ �������� ������ �Խù��� �ο� ��
		maxPage = (totalCount % pageSize == 0) ? (totalCount / pageSize) : (totalCount / pageSize + 1);
		// totalCount = 20�̶�� �����ϸ�
		// maxPage = 7�̵ȴ�.
		
		beginUnitPage = ((currentPage-1) / pageUnit) * pageUnit + 1;
		
		if(((currentPage - 1) / pageUnit) >= maxPage / pageUnit)
		{
			endUnitPage = maxPage;
		}
		else
		{
			endUnitPage = (((currentPage - 1) / pageUnit) + 1) * pageUnit;
		}
	}
	
	// �޼���
	// getter, setter
	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getPageUnit() {
		return pageUnit;
	}

	public void setPageUnit(int pageUnit) {
		this.pageUnit = pageUnit;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}

	public int getBeginUnitPage() {
		return beginUnitPage;
	}

	public void setBeginUnitPage(int beginUnitPage) {
		this.beginUnitPage = beginUnitPage;
	}

	public int getEndUnitPage() {
		return endUnitPage;
	}

	public void setEndUnitPage(int endUnitPage) {
		this.endUnitPage = endUnitPage;
	}

	// toString()
	@Override
	public String toString() {
		return "Page [currentPage=" + currentPage + ", totalCount="
				+ totalCount + ", pageUnit=" + pageUnit + ", pageSize="
				+ pageSize + ", maxPage=" + maxPage + ", beginUnitPage="
				+ beginUnitPage + ", endUnitPage=" + endUnitPage + "]";
	}
}
