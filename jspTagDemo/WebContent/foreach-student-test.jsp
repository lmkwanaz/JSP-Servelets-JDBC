<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page import="java.util.*, com.TagDemo.*"%>

<%
	List<Student> data = new ArrayList<>();

	data.add(new Student("Lwandile", "Mkwanazi", true));
	data.add(new Student("Gwen", "Ngwenya", true));
	data.add(new Student("Siyabonga", "Sibeko", false));
	data.add(new Student("kenneth", "Mahlatse", false));
	
	pageContext.setAttribute("students", data);
%>
<!-- JSTL Core Tags -->
<html>
<body>
<table>
<tr>
<th>First name</th>
<th>Last name</th>
<th>Gold Customer</th>
</tr>

<c:forEach var="theStudents" items="${students}">

<tr>
<td>${theStudents.firstName}</td>
<td> ${theStudents.lastName}</td>
<td> ${theStudents.goldCustomer}</td> 
</tr>

</c:forEach>

</table><br/>

this students have a special discount<hr><br/>

<table>
<tr>
<th>First name</th>
<th>Last name</th>
<th>Gold Customer</th>
</tr>

<c:forEach var="theStudents" items="${students}">
<c:if test="${theStudents.goldCustomer}">
<tr>
<td>${theStudents.firstName}</td>
<td> ${theStudents.lastName}</td>
<td> ${theStudents.goldCustomer}</td> 
</tr>
</c:if>


</c:forEach>

</table>

<h3>Student's Prices</h3><hr><br/>

<table>
<tr>
<th>First name</th>
<th>Last name</th>
<th>Gold Customer</th>
</tr>

<c:forEach var="theStudents" items="${students}">

<tr>
<td>${theStudents.firstName}</td>
<td> ${theStudents.lastName}</td>
<td><c:choose>
<c:when test="${theStudents.goldCustomer}"> special discount</c:when>
<c:otherwise>No special discount</c:otherwise>
</c:choose>
</td> 
</tr>

</c:forEach>

</table>
</body>
</html>