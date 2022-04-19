<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<%@include file="/WEB-INF/views/include/header.jsp"%>
<%-- <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> --%>

<h1  class="text-red">${students.size() }</h1>
<div class="container">
	<div class="row">
		<div class="col-12">
			<table class="table table-hover table-striped table-bordered">
				<thead>
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Họ Tên</th>
						<th scope="col">Điểm</th>
						<th scope="col">Giới tính</th>
						<th scope="col">Ngày sinh</th>
						<th scope="col">Chuyên ngành</th>
						<th scope="col">Sửa</th>
						<th scope="col">Xóa</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="student" items="${students }">
						<tr>
							<th scope="row">${student.getId() }</th>
							<td>${student.getFullname() }</td>
							<td>${student.getMark() }</td>
							<td>${student.getGender() }</td>
							<td>${student.getBirthday() }</td>
							<td>${student.majors.getName() }</td>
							<td><a href="lesson6/index.htm?linkEdit">
									<button type="button" class="btn btn-info">Sửa</button>
							</a></td>
							<td><a href="lesson6/index.htm?linkDelete">
									<button type="button" class="btn btn-danger">Xóa</button>
							</a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
</div>

<%@include file="/WEB-INF/views/include/footer.jsp"%>