package admin.bean;

public class EmployeeDTO {
   private String Eid;
   private String name;
   private String major;
   private String dpname;
   
   
public String getEid() {
	return Eid;
}
public void setEid(String eid) {
	Eid = eid;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getMajor() {
	return major;
}
public void setMajor(String major) {
	this.major = major;
}
public String getDpname() {
	return dpname;
}
public void setDpname(String dpname) {
	this.dpname = dpname;
}
   
   
}
