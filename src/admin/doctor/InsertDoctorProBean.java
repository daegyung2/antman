package admin.doctor;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import admin.bean.DoctorDTO;

@Controller
public class InsertDoctorProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List fileList;
	private int drId;
	
	@RequestMapping("/insertDoctorPro.do")
	 public String fileUpload(MultipartHttpServletRequest request,DoctorDTO dto) throws IllegalStateException, IOException{
		
		   sqlMapClient.insert("doctor.insertDr", dto);
		   drId = (int) sqlMapClient.queryForObject("doctor.max",dto);
		   dto.setDrId(drId);
		   fileList = request.getFiles("drimg");
		   for(int i = 0; i < 5 ; i++){
		   MultipartFile file = (MultipartFile) fileList.get(i);
		   if(!file.isEmpty()){//
		   String name = file.getOriginalFilename();//C:\Users\downmemory\git\antman
		   File sf = new File("H://antman//WebContent//image//"+name);
		   file.transferTo(sf);
		   dto.setDrimg1("/antman/image/"+name);
		   sqlMapClient.update("doctor.updateDrimg"+(i+1),dto);
		   }else{
		   dto.setDrimg1("/antman/image/noimage.jpg");
		   sqlMapClient.update("doctor.updateDrimg"+(i+1),dto);
		   }
		   } 
		 return "doctorList.do";
	 }

}
