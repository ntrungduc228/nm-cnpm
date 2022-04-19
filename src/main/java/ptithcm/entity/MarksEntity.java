
package ptithcm.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity

@Table(name = "Mark")
public class MarksEntity implements Serializable{

	
	/*
	 * @EmbeddedId private MarkPK Id;
	 * 
	 * 
	 * public MarkPK getId() { return Id; }
	 * 
	 * public void setId(MarkPK id) { Id = id; }
	 */
		 
	
	  private static final long serialVersionUID = 1L;
	  
		
		
		/*
		 * @Id
		 * 
		 * @Column(name = "StudentId") private Integer StudentId;
		 * 
		 * @Id
		 * 
		 * @Column(name = "MajorId") private String MajorId;
		 * 
		 * public Integer getStudentId() { return StudentId; }
		 * 
		 * public void setStudentId(Integer studentId) { StudentId = studentId; }
		 * 
		 * public String getMajorId() { return MajorId; }
		 * 
		 * public void setMajorId(String majorId) { MajorId = majorId; }
		 */
		 

	@Column(name = "Mark")
	private Double Mark;

	
	  @Id
	  
	  @ManyToOne
	  
	  @JoinColumn(name = "StudentId",insertable=false, updatable=false) public
	  StudentsEntity student;
	  
	  @Id
	  
	  @ManyToOne
	  
	  @JoinColumn(name = "MajorId",insertable=false, updatable=false) public
	  MajorsEntity major;
	 

	

	public Double getMark() {
		return Mark;
	}

	public void setMark(Double mark) {
		Mark = mark;
	}

	public StudentsEntity getStudent() {
		return student;
	}

	public void setStudent(StudentsEntity student) {
		this.student = student;
	}

	public MajorsEntity getMajor() {
		return major;
	}

	public void setMajor(MajorsEntity major) {
		this.major = major;
	}

	
	

}
