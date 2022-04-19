<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<%@include file="/WEB-INF/views/include/header.jsp"%>
<%-- <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> --%>
<%@taglib tagdir="/WEB-INF/tags" prefix="tg"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h1  class="text-red">${students.size() }</h1>
<div class="container">
	<div class="row">
	<div class="col-12">
		${message}
			<form:form class="row g-3" modelAttribute="student"
				action="student/add" method="post">
				<form:input path="Id" type="hidden" class="form-control"
					id="exampleFormControlInput1"
					placeholder="Vui lòng nhập tên sản phẩm" />
				<div class="col-md-4">
					<label for="exampleFormControlInput1" class="form-label">Tên
						sv</label>
					<form:input path="Fullname" type="text" class="form-control"
						id="exampleFormControlInput1"
						placeholder="Vui lòng nhập tên sinh viene" />
				</div>
				<div class="col-md-4">
					<label for="exampleFormControlInput1" class="form-label">Năm
						sản xuất</label>
					<form:input path="Mark" type="text" class="form-control"
						id="exampleFormControlInput1"
						placeholder="Ddiemer" />
				</div>
				<div class="col-md-4">
					<label for="exampleFormControlInput1" class="form-label">Gender</label>
					
					<form:radiobutton path="Gender" value="true" label="Male"/>
					<form:radiobutton path="Gender" value="false" label="Female"/>
				</div>

				<div class="col-md-6">
					<label for="exampleFormControlInput1" class="form-label">Birthday</label>
					<form:input path="Birthday" type="text" class="form-control"
						id="exampleFormControlInput1"
						placeholder="Birthday" />

					
				</div>
				 <div class="col-md-6">
					<label for="exampleFormControlInput1" class="form-label">Majors ${MajorsList.size() }</label>
					
				 	<form:select path="major.Id" items="${MajorsList}"
						itemLabel="Name" itemValue="Id"
						class="form-select form-select-lg mb-6"
						aria-label=".form-select-lg example">

					</form:select> 
				</div> 
				
				<div class="col-12">
					<button name="btnAdd" type="submit" class="btn btn-primary">Save</button>
				</div>





			</form:form>
		
	</div>
	<jsp:useBean id="pagedListHolder" scope="request"
				type="org.springframework.beans.support.PagedListHolder" />
			<c:url value="list" var="pagedLink">
				<c:param name="p" value="~" />
			</c:url>
			<form class="d-flex-inline">
				<input	name="searchInput" id="searchInput" class="form-group" placeholder="Search" />
				<button type="submit" class="btn btn-primary">Search</button>
			</form>
			<div class="col-12">
				<tg:paging pagedLink="${pagedLink }"
					pagedListHolder="${pagedListHolder }"></tg:paging>
			</div>
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
					<c:forEach var="student" items="${pagedListHolder.pageList }">
							<%-- <c:forEach var="student" items="${students }"> --%>
						<tr>
							<th scope="row">${student.id }</th>
							<td>${student.fullname}</td>
							<td>${student.getMark() }</td>
							<td>${student.getGender() }</td>
							<td>${student.getBirthday() }</td>
							<td>${student.major.name }</td>
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
		<div class="col-12">
				<tg:paging pagedLink="${pagedLink }"
					pagedListHolder="${pagedListHolder }"></tg:paging>
			</div>
	</div>
</div>

<%@include file="/WEB-INF/views/include/footer.jsp"%>