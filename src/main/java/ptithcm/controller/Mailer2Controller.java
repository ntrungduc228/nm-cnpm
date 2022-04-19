package ptithcm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.bean.Mailer;

@Controller
@RequestMapping("/mailer2/")
public class Mailer2Controller {
	@Autowired
	Mailer mailer;
	@RequestMapping("form")
	public String index(){
		return "email/form";
	}
	
	
	@RequestMapping("send")
	public String send(ModelMap model,
			@RequestParam("from") String from,
			@RequestParam("to") String to,
			@RequestParam("subject") String subject,
			@RequestParam("body") String body){
		try{
			// Gui mail
			mailer.send(from, to, subject, body);
			
			model.addAttribute("message", "Gửi mail thành công");
		}
		catch(Exception ex){
			model.addAttribute("message", "Gửi mail thất bại");
		}
		
		return "email/form";
	}
}
