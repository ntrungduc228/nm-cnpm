
package ptithcm.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * @author ntrungduc
 *
 */
@Embeddable
public class MarkPK implements Serializable {

	private static final long serialVersionUID = 1L;

	@Column(name = "StudentId")
	private Integer StudentId;

	@Column(name = "MajorId")
	private String MajorId;


	public Integer getStudentId() {
		return StudentId;
	}



	public void setStudentId(Integer studentId) {
		StudentId = studentId;
	}



	public String getMajorId() {
		return MajorId;
	}

	

	public void setMajorId(String majorId) {
		MajorId = majorId;
	}
	
	public MarkPK(Integer studentId, String majorId) {
		super();
		StudentId = studentId;
		MajorId = majorId;
	}

	public MarkPK() {
		super();
	}

	
}
