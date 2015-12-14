package admin.doctor;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import admin.bean.DoctorDTO;

@Controller
public class InsertDoctorProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/insertDoctorPro.do")
	 public String fileUpload(MultipartHttpServletRequest request,DoctorDTO dto) throws IllegalStateException, IOException{
		 for(int i = 1; i <= 5 ; i++){
		   MultipartFile file = request.getFile("drimg"+i);
		   if(!file.isEmpty()){
		   String name = file.getOriginalFilename();
		   File sf = new File("e://save//"+name);
		   file.transferTo(sf);
		   request.setAttribute("drimg"+i,"e://save//"+name);
			 }else{
			 i = 5;
			 }
		 sqlMapClient.insert("doctor.insertDr", dto);
		 }
		 return "doctorList.do";
	 }

}
