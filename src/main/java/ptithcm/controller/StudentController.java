package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.MajorsEntity;
import ptithcm.entity.StudentsEntity;

@Transactional
@Controller
@RequestMapping("/student/")
public class StudentController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("list")
	public String getList(HttpServletRequest request, ModelMap model,
			@ModelAttribute("student") StudentsEntity student) {
		List<StudentsEntity> list = this.getListStudents();

		PagedListHolder pagedListHolder = new PagedListHolder(list);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(5);
		pagedListHolder.setPageSize(5);

		model.addAttribute("pagedListHolder", pagedListHolder);

//		model.addAttribute("students", list);

		return "student/list";
	}
	
	@RequestMapping(value="add", method=RequestMethod.POST)
	public String add(HttpServletRequest request, ModelMap model,
			@ModelAttribute("student") StudentsEntity student) {
		
		Integer temp = this.addStudent(student);
		if(temp != 0) {
			model.addAttribute("message", "them thanh cong");
		}else {
			model.addAttribute("message", "them that bai");
		}
		
		List<StudentsEntity> list = this.getListStudents();

		PagedListHolder pagedListHolder = new PagedListHolder(list);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(5);
		pagedListHolder.setPageSize(5);

		model.addAttribute("pagedListHolder", pagedListHolder);

//		model.addAttribute("students", list);

		return "student/list";
	}
	
	public Integer addStudent(StudentsEntity student) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.save(student);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			return 0;
		} finally {
			session.close();
		}
		return 1;
	}

	public List<StudentsEntity> getListStudents() {
		Session session = factory.getCurrentSession();
		String hql = "FROM StudentsEntity as st order by st.Id desc";
		Query query = session.createQuery(hql);

		List<StudentsEntity> list = query.list();

		return list;
	}

	@ModelAttribute("MajorsList")
	public List<MajorsEntity> getMajorsList() {
		Session session = factory.getCurrentSession();
		String hql = "FROM MajorsEntity";
		Query query = session.createQuery(hql);
		List<MajorsEntity> list = query.list();
		return list;
	}
}
