package praiseboard;

import java.sql.Date;

public class PraiseVO {

		private int no;
		private int pid;
		private	String id;
		private String name;
		private String subject;
		private String content;
		private Date reg_date;
		private String drname;
		private String dpname;
		private String major;
		private String exarea;
		private String drimg1;
		private String view;
		
		
		
		
		public String getView() {
			return view;
		}
		public void setView(String view) {
			this.view = view;
		}
		public int getPid() {
			return pid;
		}
		public void setPid(int pid) {
			this.pid = pid;
		}
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
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
		public int getNo() {
			return no;
		}
		public void setNo(int no) {
			this.no = no;
		}
		public String getDrname() {
			return drname;
		}
		public void setDrname(String drname) {
			this.drname = drname;
		}
		public String getDpname() {
			return dpname;
		}
		public void setDpname(String dpname) {
			this.dpname = dpname;
		}
		public String getMajor() {
			return major;
		}
		public void setMajor(String major) {
			this.major = major;
		}
		public String getExarea() {
			return exarea;
		}
		public void setExarea(String exarea) {
			this.exarea = exarea;
		}
		public String getDrimg1() {
			return drimg1;
		}
		public void setDrimg1(String drimg1) {
			this.drimg1 = drimg1;
		}
		
		
}
