<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/header.jsp"%>

<div class="container">
	<div class="row">
		<h1>${message }</h1>
		<div class="col-4">
			<form:form class="g-3" action="mark/add.htm" method="post"
				modelAttribute="mark">
			${students.size() }
			
			<form:select path="student.Id" items="${students}" itemLabel="Fullname"
					itemValue="Id" class="form-select" />


				<form:select path="major.Id" items="${majors }" itemValue="Id"
					itemLabel="Name" class="form-select" />

				<form:input path="mark" class="form-control" />

				<button class="btn btn-primary" name="btnAdd">Add</button>
			</form:form>
		</div>
		<div class="col-12">
			<h1>num of marks: ${marks.size() }</h1>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Name</th>
						<th scope="col">Major</th>
						<th scope="col">Mark</th>
						<th scope="col">action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="m" items="${marks }">
						<tr>
							<th>${m.student.id }</th>
							<th>${m.student.fullname }</th>
							<th>${m.major.name }</th>
							<th>${m.mark }</th>
							<th></th>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>

<%@include file="/WEB-INF/views/include/footer.jsp"%>