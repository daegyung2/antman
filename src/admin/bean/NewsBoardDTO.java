package admin.bean;

import java.sql.Date;

public class NewsBoardDTO {

	private int NEid;
	private String subject;
	private String content;
	private Date reg_date;
	
	public int getNEid() {
		return NEid;
	}
	public void setNEid(int nEid) {
		this.NEid = nEid;
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
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
}
