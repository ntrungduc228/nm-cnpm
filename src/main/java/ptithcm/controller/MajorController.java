package ptithcm.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.entity.MajorsEntity;

@Transactional
@Controller
@RequestMapping("/major/")
public class MajorController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("index")
	public String getViewMajor(ModelMap model) {
		List<MajorsEntity> list = this.getMajors();
		model.addAttribute("list", list);
		return "major/index";
	}
	
	public List<MajorsEntity> getMajors(){
		Session session = factory.getCurrentSession();
		String hql = "from MajorsEntity";
		Query query = session.createQuery(hql);
		
		List<MajorsEntity> list = query.list();
		return list;
	}
	
}
