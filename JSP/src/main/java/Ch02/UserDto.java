package Ch02;

public class UserDto {

	private String userid;
	private String password;
	private String repassword;
	private String username;
	private String zipcode;
	private String addr1;
	private String addr2;
	private String phone1;
	private String phone2;
	private String phone3;
	private String tell1;
	private String tell2;
	private String tell3;
	private String email;
	private String year;
	private String month;
	private String day;
	//디폴트 생성자
	public UserDto(){}
	//모든인자 생성자
	public UserDto(String userid, String password, String repassword, String username, String zipcode, String addr1,
			String addr2, String phone1, String phone2, String phone3, String tell1, String tell2, String tell3,
			String email, String year, String month, String day) {
		super();
		this.userid = userid;
		this.password = password;
		this.repassword = repassword;
		this.username = username;
		this.zipcode = zipcode;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
		this.tell1 = tell1;
		this.tell2 = tell2;
		this.tell3 = tell3;
		this.email = email;
		this.year = year;
		this.month = month;
		this.day = day;
	}
	//getter setter
	public String getUserid() {
		return userid;
	}
	
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getPhone3() {
		return phone3;
	}
	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}
	public String getTell1() {
		return tell1;
	}
	public void setTell1(String tell1) {
		this.tell1 = tell1;
	}
	public String getTell2() {
		return tell2;
	}
	public void setTell2(String tell2) {
		this.tell2 = tell2;
	}
	public String getTell3() {
		return tell3;
	}
	public void setTell3(String tell3) {
		this.tell3 = tell3;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	
	
	
	//toString
	@Override
	public String toString() {
		return "UserDto [userid=" + userid + ", password=" + password + ", repassword=" + repassword + ", username="
				+ username + ", zipcode=" + zipcode + ", addr1=" + addr1 + ", addr2=" + addr2 + ", phone1=" + phone1
				+ ", phone2=" + phone2 + ", phone3=" + phone3 + ", tell1=" + tell1 + ", tell2=" + tell2 + ", tell3="
				+ tell3 + ", email=" + email + ", year=" + year + ", month=" + month + ", day=" + day + "]";
	}
	

}
