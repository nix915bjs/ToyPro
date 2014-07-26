package spring.domain.guro;

public class GuroRentalShop
{
	private int rentalCode; // �뿩����ȣ
	private String toyCnt; // �峭������ toy_cnt
	private String addr; // �ּ� addr
	private String tel; // ��ȭ��ȣ tel
	private String useHours; // �̿�ð� user_hours
	private String closeDay; // �ް��� close_day
	private String rentalTerm; // �뿩�Ⱓ bookrental_term
	private String rentalCnt; // �뿩���� bookrental_cnt
	
	public GuroRentalShop()
	{
		
	}

	public int getRentalCode() {
		return rentalCode;
	}

	public String getToyCnt() {
		return toyCnt;
	}

	public String getAddr() {
		return addr;
	}

	public String getTel() {
		return tel;
	}

	public String getUseHours() {
		return useHours;
	}

	public String getCloseDay() {
		return closeDay;
	}

	public String getRentalTerm() {
		return rentalTerm;
	}

	public String getRentalCnt() {
		return rentalCnt;
	}

	public void setRentalCode(int rentalCode) {
		this.rentalCode = rentalCode;
	}

	public void setToyCnt(String toyCnt) {
		this.toyCnt = toyCnt;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public void setUseHours(String useHours) {
		this.useHours = useHours;
	}

	public void setCloseDay(String closeDay) {
		this.closeDay = closeDay;
	}

	public void setRentalTerm(String rentalTerm) {
		this.rentalTerm = rentalTerm;
	}

	public void setRentalCnt(String rentalCnt) {
		this.rentalCnt = rentalCnt;
	}

	@Override
	public String toString() {
		return "GuroRentalShop [rentalCode=" + rentalCode + ", toyCnt="
				+ toyCnt + ", addr=" + addr + ", tel=" + tel + ", useHours="
				+ useHours + ", closeDay=" + closeDay + ", rentalTerm="
				+ rentalTerm + ", rentalCnt=" + rentalCnt + "]";
	}
}
