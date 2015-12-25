package admin.department;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import admin.bean.DepartmentDTO;

@Controller
public class InsertDepartmentProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List fileList;
	private int depart_id;
	private MultipartFile file;
	
    @RequestMapping("/insertDepartPro.do")
	public String insertPro(DepartmentDTO dto, MultipartHttpServletRequest request) throws IllegalStateException, IOException{
    	
    	sqlMapClient.insert("depart.insert", dto);
    	   
    		depart_id = (int) sqlMapClient.queryForObject("depart.max",dto);
		   dto.setDepart_id(depart_id);
		   System.out.println(dto.getDepart_id());
		   file = request.getFile("upload");
		  
		   if(!file.isEmpty()){//
		   String name = file.getOriginalFilename();//C:\Users\downmemory\git\antman
		   File sf = new File("c://Users//downmemory//git//antman//WebContent//image//departimg//"+name);
		   file.transferTo(sf);
		   dto.setDpimg("/antman/image/departimg/"+name);
		   sqlMapClient.update("depart.updateDpimg",dto);
		   }else{
		   dto.setDpimg("/antman/image/noimage.jpg");
		   sqlMapClient.update("depart.updateDpimg",dto);
		   }
		   
    	return "departmentList.do";
    	
    }
	
}
