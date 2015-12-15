package admin.doctor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;
import admin.bean.DoctorDTO;

@Controller
public class DoctorListBean {
   @Autowired
   private SqlMapClientTemplate sqlMapClient;
   private List list;

   
   @RequestMapping("/doctorList.do")
   public String doctorList(HttpServletRequest request,DoctorDTO dto, DepartmentDTO depart ){
	   list = sqlMapClient.queryForList("doctor.selectList",dto);
	   return "/admin/doctor/doctorList.jsp";
   }
   
   @ModelAttribute("list")
   public List getList(DoctorDTO dto){
	   return sqlMapClient.queryForList("doctor.selectList",dto);
   }
   
   
}
