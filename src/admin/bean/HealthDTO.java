package admin.bean;

public class HealthDTO {
	private int hid;
	private String hname;
	private String body_part;
	private String decease;
	private String symptoms;
	private String r_decease;
	private String dpname;
	private String same_lang;
	private String himg;
	
	public String getHimg() {
		return himg;
	}
	public void setHimg(String himg) {
		this.himg = himg;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	public String getBody_part() {
		return body_part;
	}
	public void setBody_part(String body_part) {
		this.body_part = body_part;
	}
	public String getDecease() {
		return decease;
	}
	public void setDecease(String decease) {
		this.decease = decease;
	}
	public String getSymptoms() {
		return symptoms;
	}
	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}
	public String getR_decease() {
		return r_decease;
	}
	public void setR_decease(String r_decease) {
		this.r_decease = r_decease;
	}
	public String getDpname() {
		return dpname;
	}
	public void setDpname(String dpname) {
		this.dpname = dpname;
	}
	public String getSame_lang() {
		return same_lang;
	}
	public void setSame_lang(String same_lang) {
		this.same_lang = same_lang;
	}
	

}
