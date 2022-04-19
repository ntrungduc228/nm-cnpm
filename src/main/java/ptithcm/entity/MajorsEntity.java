package ptithcm.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
@Table(name="Majors")
public class MajorsEntity {
	
	@Id
	@Column(name="Id")
	private String Id;
	@Column(name="Name")
	private String Name;
	
	@OneToMany(mappedBy="major", fetch=FetchType.EAGER)
	private Collection<StudentsEntity> students;

	@OneToMany(mappedBy="major", fetch=FetchType.EAGER)
	private Collection<MarksEntity> mark;
	
	public String getId() {
		return Id;
	}

	public Collection<MarksEntity> getMark() {
		return mark;
	}

	public void setMark(Collection<MarksEntity> mark) {
		this.mark = mark;
	}

	public void setId(String id) {
		Id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public Collection<StudentsEntity> getStudents() {
		return students;
	}

	public void setStudents(Collection<StudentsEntity> students) {
		this.students = students;
	}
	
	
}

