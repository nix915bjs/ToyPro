package spring.domain.guro;

public class GuroToy
{
	// �ʵ�
	private String maintitle; // toy_name �峭�� �̸�
	private String toyIdid; // toy_code �峲�� ��ȣ
	private String subject; // category_code �з���ȣ
	private String fn; // business ��ü��
	private String region; // region ������
	private String created; // made_date ��������
	private String issued; // get_date �Լ������
	private String age; // use_age �̿뿬��
	private String codeDesc; // rental_state �뿩����
	private String brchName; // �� �� rental_code�� ����, �뿩�� ��ȣ
	private String toyImg;
	
	// ������
	public GuroToy()
	{
		
	}

	public String getMaintitle() {
		return maintitle;
	}

	public String getToyIdid() {
		return toyIdid;
	}

	public String getSubject() {
		return subject;
	}

	public String getFn() {
		return fn;
	}

	public String getRegion() {
		return region;
	}

	public String getCreated() {
		return created;
	}

	public String getIssued() {
		return issued;
	}

	public String getAge() {
		return age;
	}

	public String getCodeDesc() {
		return codeDesc;
	}

	public String getBrchName() {
		return brchName;
	}

	public String getToyImg() {
		return toyImg;
	}

	public void setMaintitle(String maintitle) {
		this.maintitle = maintitle;
	}

	public void setToyIdid(String toyIdid) {
		this.toyIdid = toyIdid;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public void setFn(String fn) {
		this.fn = fn;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public void setCreated(String created) {
		this.created = created;
	}

	public void setIssued(String issued) {
		this.issued = issued;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public void setCodeDesc(String codeDesc) {
		this.codeDesc = codeDesc;
	}

	public void setBrchName(String brchName) {
		this.brchName = brchName;
	}

	public void setToyImg(String toyImg) {
		this.toyImg = toyImg;
	}

	@Override
	public String toString() {
		return "GuroToy [maintitle=" + maintitle + ", toyIdid=" + toyIdid
				+ ", subject=" + subject + ", fn=" + fn + ", region=" + region
				+ ", created=" + created + ", issued=" + issued + ", age="
				+ age + ", codeDesc=" + codeDesc + ", brchName=" + brchName
				+ ", toyImg=" + toyImg + "]";
	}
}
