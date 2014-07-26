package spring.domain;

public class RentalShop
{
	private int rentalCode;
	private Gu guCode;
	private String rentalName;
	private String addr;
	private String tel;
	private String useHours;
	private String rentalTerm;
	private String rentalCnt;
	private String toyCnt;
	private String closeDay;
	private String website;
	
	public RentalShop()
	{
		
	}

	public int getRentalCode() {
		return rentalCode;
	}

	public Gu getGuCode() {
		return guCode;
	}

	public String getRentalName() {
		return rentalName;
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

	public String getRentalTerm() {
		return rentalTerm;
	}

	public String getRentalCnt() {
		return rentalCnt;
	}

	public String getToyCnt() {
		return toyCnt;
	}

	public String getCloseDay() {
		return closeDay;
	}

	public String getWebsite() {
		return website;
	}

	public void setRentalCode(int rentalCode) {
		this.rentalCode = rentalCode;
	}

	public void setGuCode(Gu guCode) {
		this.guCode = guCode;
	}

	public void setRentalName(String rentalName) {
		this.rentalName = rentalName;
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

	public void setRentalTerm(String rentalTerm) {
		this.rentalTerm = rentalTerm;
	}

	public void setRentalCnt(String rentalCnt) {
		this.rentalCnt = rentalCnt;
	}

	public void setToyCnt(String toyCnt) {
		this.toyCnt = toyCnt;
	}

	public void setCloseDay(String closeDay) {
		this.closeDay = closeDay;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	@Override
	public String toString() {
		return "RentalShop [rentalCode=" + rentalCode + ", guCode=" + guCode
				+ ", rentalName=" + rentalName + ", addr=" + addr + ", tel="
				+ tel + ", useHours=" + useHours + ", rentalTerm=" + rentalTerm
				+ ", rentalCnt=" + rentalCnt + ", toyCnt=" + toyCnt
				+ ", closeDay=" + closeDay + ", website=" + website + "]";
	}
}
