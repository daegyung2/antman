package admin.employee;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import admin.bean.EmployeeDTO;

@Controller
public class UpdateEmployeeProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List fileList;
	
	@RequestMapping("/updateEmployeePro.do")
	public String updateEmPro(EmployeeDTO dto,MultipartHttpServletRequest request) throws IllegalStateException, IOException{
		   sqlMapClient.update("employee.updateAll",dto);
		   fileList = request.getFiles("emimg");
		   for(int i = 0; i < 5 ; i++){
		   MultipartFile file = (MultipartFile) fileList.get(i);
		   if(!file.isEmpty()){
		   String name = file.getOriginalFilename();
		   File sf = new File("c://Users//user1//git//antman//WebContent//image//"+name);
		   file.transferTo(sf);
		   dto.setEmimg1("/antman/image/"+name);
		   sqlMapClient.update("employee.updateEmimg"+(i+1),dto);
		   }else{
		   dto.setEmimg1("/antman/image/noimage.jpg");
		   sqlMapClient.update("employee.updateEmimg"+(i+1),dto);
		   }
		   }
		return "employeeList.do";
	}

}
