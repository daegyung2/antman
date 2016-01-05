package admin.bean;

import java.sql.Date;

public class LectureBoardDTO {

	private int LEid;
	private String subject;
	private String content;
	private Date Reg_date;
	private String leimg;


	public String getLeimg() {
		return leimg;
	}
	public void setLeimg(String leimg) {
		this.leimg = leimg;
	}
	public int getLEid() {
		return LEid;
	}
	public void setLEid(int LEid) {
		this.LEid = LEid;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getReg_date() {
		return Reg_date;
	}
	public void setReg_date(Date reg_date) {
		Reg_date = reg_date;
	}

	
	
}
