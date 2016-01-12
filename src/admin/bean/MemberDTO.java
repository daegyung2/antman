package admin.bean;

public class MemberDTO {
	
	private String id;
	private int drid; //원래 인트인데 String으로 바꿈
	private int passwd;
	private String name;
	private int age;
	private String gender;
	private int phone;
	private String e_mail;
	private String getMail;
	private int Eid; //원래 인트인데 스트링으로 바꿈
	private String Dreg_num;
	private int reg_num;
	private String auth;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getDrid() {
		return drid;
	}
	public void setDrid(int drid) {
		this.drid = drid;
	}
	public int getPasswd() {
		return passwd;
	}
	public void setPasswd(int passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getE_mail() {
		return e_mail;
	}
	public void setE_mail(String e_mail) {
		this.e_mail = e_mail;
	}
	public String getGetMail() {
		return getMail;
	}
	public void setGetMail(String getMail) {
		this.getMail = getMail;
	}
	public int getEid() {
		return Eid;
	}
	public void setEid(int eid) {
		Eid = eid;
	}
	public String getDreg_num() {
		return Dreg_num;
	}
	public void setDreg_num(String dreg_num) {
		Dreg_num = dreg_num;
	}
	public int getReg_num() {
		return reg_num;
	}
	public void setReg_num(int reg_num) {
		this.reg_num = reg_num;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}


	
	
	
	
}
