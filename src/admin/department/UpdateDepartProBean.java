package admin.department;

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
import org.springframework.web.servlet.ModelAndView;

import admin.bean.DepartmentDTO;

@Controller
public class UpdateDepartProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private MultipartFile file;

	@RequestMapping("/updateDepartForm.do")
	public String updateForm(DepartmentDTO dto , HttpServletRequest request){
		System.out.println(dto.getDepart_id());
		dto = (DepartmentDTO) sqlMapClient.queryForObject("depart.selectOne",dto.getDepart_id());
		
		request.setAttribute("dto", dto);
		return "/admin/department/updateDepartment.jsp";
	}
	
	
	
	
	
	@RequestMapping("/updateDepartPro.do")
	public String updatePro(DepartmentDTO dto, MultipartHttpServletRequest request) throws IllegalStateException, IOException{
		sqlMapClient.update("depart.update",dto);
	
		System.out.println(dto.getDepart_id());
		   file = request.getFile("upload");
		  
		   if(!file.isEmpty()){
		   String name = file.getOriginalFilename();//C:\Users\downmemory\git\antman
		   File sf = new File("c://Users//downmemory//git//antman//WebContent//image//departimg//"+name);
		   file.transferTo(sf);
		   dto.setDpimg("/antman/image/departimg/"+name);
		   System.out.println(dto.getDpimg());
		   sqlMapClient.update("depart.updateDpimg",dto);
		   }else{
		   dto.setDpimg("/antman/image/noimage.jpg");
		   sqlMapClient.update("depart.updateDpimg",dto);
		   }

		return "departmentList.do";
		
	}


	
}
