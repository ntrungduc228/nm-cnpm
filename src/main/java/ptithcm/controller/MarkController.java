package ptithcm.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.entity.MajorsEntity;
import ptithcm.entity.MarkPK;
import ptithcm.entity.MarksEntity;
import ptithcm.entity.StudentsEntity;

@Transactional
@Controller
@RequestMapping("/mark/")
public class MarkController {
	@Autowired
	SessionFactory  factory;
	
	@RequestMapping(value={"index","/"})
	public String index(ModelMap model, @ModelAttribute("mark") MarksEntity mark) {
		List<MarksEntity> list = this.getMarks();
		model.addAttribute("marks", list);
//		model.addAttribute("mark", new MarksEntity());
		
		
		return "mark/index";
	}
	
	@RequestMapping(value="add")
	public String getAddView(ModelMap model) {
		return "redirect:/mark/index";
	}
	
	@RequestMapping(value="add", params="btnAdd")
	public String addNewMark(ModelMap model, @ModelAttribute("mark") MarksEntity mark) {
		 System.out.println("ID " +mark.student.Id);
		 System.out.println("mark ID " +mark.major.getId());
		 
//		 mark.setMajorId(mark.major.getId());
//		 mark.setStudentId(mark.student.Id);
		 
//		 MarkPK pk = new MarkPK(mark.student.Id, mark.major.getId());
//		 mark.setId(pk);
		 
		Integer result = this.add(mark);
		if(result ==0) {
			model.addAttribute("message", "Thêm thất bại");
		}else {
			model.addAttribute("message", "Thêm thành công");
		}
		
		List<MarksEntity> list = this.getMarks();
		model.addAttribute("marks", list);
		
		return "mark/index";
	}
	
	public Integer add(MarksEntity mark) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			session.save(mark);
			t.commit();
		}catch(Exception e) {
			System.out.println(e);
			t.rollback();
			return 0;
		}
		finally {
			session.close();
		}
		return 1;
	}
	
	public List<MarksEntity> getMarks(){
		Session session = factory.getCurrentSession();
		String hql = "FROM MarksEntity";
		Query query = session.createQuery(hql);
		List<MarksEntity> list = query.list();
		
		return list;
	}
	
	@ModelAttribute("students")
	public List<StudentsEntity> listStudent(){
		Session session = factory.getCurrentSession();
		String hql = "FROM StudentsEntity";
		Query query = session.createQuery(hql);
		List<StudentsEntity> list = query.list();
		
		return list;
	}
	
	@ModelAttribute("majors")
	public List<MajorsEntity> listMajors(){
		Session session = factory.getCurrentSession();
		String hql = "FROM MajorsEntity";
		Query query = session.createQuery(hql);
		List<MajorsEntity> list = query.list();
		
		return list;
	}
}
