package admin.decease;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import admin.bean.DeceaseDTO;

@Controller
public class InsertDeceaseProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private int decid;

	@RequestMapping("/insertDeceasePro.do")
	public String insertDeceasePro(MultipartHttpServletRequest request,DeceaseDTO dto) throws IllegalStateException, IOException{
		System.out.println(request.getParameter("depart_id"));
	    sqlMapClient.insert("decease.insert",dto);
	    decid = (int)sqlMapClient.queryForObject("decease.max",dto);
	    dto.setDecid(decid);
	    MultipartFile file = request.getFile("deimg");
	    String name = file.getOriginalFilename();
	    File sf = new File("H://antman//WebContent//image//"+name);
	    file.transferTo(sf);
	    dto.setDeimg("/antman/image/"+name);
	    sqlMapClient.update("decease.upload",dto);
		return "deceaseList.do";
	}
}
