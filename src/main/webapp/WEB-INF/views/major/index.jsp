<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/header.jsp"%>

<div class="container">
	<div class="row">
		<div class="col-10">
			<h3>${list.size() }</h3>
			<table  class="table">
				<thead>
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Name</th>
						<th scope="col">Major</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="l" items="${list }">
						<tr>
							<th>${l.id }</th>
							<th>${l.name }</th>
							<th> ${l.students.size() }</th>
						</tr>
					</c:forEach>
				</tbody>
			</table >
			
 				<span>${list[8].students[0].fullname }</span>
		</div>
	</div>
</div>

<%@include file="/WEB-INF/views/include/footer.jsp"%>