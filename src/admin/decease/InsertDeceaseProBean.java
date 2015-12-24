package admin.decease;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import admin.bean.DeceaseDTO;

@Controller
public class InsertDeceaseProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private int decid;
	private MultipartFile file;

	@RequestMapping("/insertDeceasePro.do")
	public String insertDeceasePro(MultipartHttpServletRequest request, DeceaseDTO dto) throws IllegalStateException, IOException{
		sqlMapClient.insert("decease.insert",dto);
		decid = (int) sqlMapClient.queryForObject("decease.max",dto);
		dto.setDecid(decid);
	    file = request.getFile("upload");
	    if(!file.isEmpty()){
	    String name = file.getOriginalFilename();
	    File sf = new File("H://antman//WebContent//deimage//"+name);
	    file.transferTo(sf);
	    dto.setDeimg("/antman/deimage/"+name);
	    sqlMapClient.update("decease.upload",dto);
	    }else{
	    dto.setDeimg("/antman/deimage/noimage.jpg");
	    sqlMapClient.update("decease.upload",dto);
	    }
	    
		return "deceaseList.do";
	}
}
