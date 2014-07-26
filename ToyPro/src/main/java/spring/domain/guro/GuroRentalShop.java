package spring.domain.guro;

public class GuroRentalShop
{
	private int rentalCode; // 대여점번호
	private String toyCnt; // 장난감개수 toy_cnt
	private String addr; // 주소 addr
	private String tel; // 전화번호 tel
	private String useHours; // 이용시간 user_hours
	private String closeDay; // 휴관일 close_day
	private String rentalTerm; // 대여기간 bookrental_term
	private String rentalCnt; // 대여수량 bookrental_cnt
	
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
