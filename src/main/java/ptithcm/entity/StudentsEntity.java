package ptithcm.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Students")
public class StudentsEntity {

	@Id
	@GeneratedValue
	@Column(name = "Id")
	public Integer Id;
	@Column(name = "Fullname")
	public String Fullname;
	@Column(name = "Mark")
	public Float Mark;
	@Column(name = "Gender")
	public Boolean Gender;
	@Column(name = "Birthday")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	public Date Birthday;

	@ManyToOne
	@JoinColumn(name = "MajorId")
	public MajorsEntity major;

	@OneToMany(mappedBy = "student", fetch = FetchType.EAGER)
	public Collection<MarksEntity> marks;

	public Collection<MarksEntity> getMarks() {
		return marks;
	}

	public void setMarks(Collection<MarksEntity> marks) {
		this.marks = marks;
	}

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public String getFullname() {
		return Fullname;
	}

	public void setFullname(String fullname) {
		Fullname = fullname;
	}

	public Float getMark() {
		return Mark;
	}

	public void setMark(Float mark) {
		Mark = mark;
	}

	public Boolean getGender() {
		return Gender;
	}

	public void setGender(Boolean gender) {
		Gender = gender;
	}

	public Date getBirthday() {
		return Birthday;
	}

	public void setBirthday(Date birthday) {
		Birthday = birthday;
	}

	public MajorsEntity getMajor() {
		return major;
	}

	public void setMajor(MajorsEntity major) {
		this.major = major;
	}
}
