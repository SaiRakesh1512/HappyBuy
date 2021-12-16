<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<t:layout>
<div class="signup-body">
	<form:form method="post" class="signup-form" action="signup" modelAttribute="userModel" >
		<div class="form-cell">
				<h1>Username</h1>
				<form:input path="username" minlength="5" maxlength="30"/>
		</div>
		
		
		<div class="form-cell">
				<h1>Email</h1>
				<form:input type="email" path="email"/>
		</div>
		
		
		<div class="form-cell">
				<h1>Mobile Number</h1>
				<form:input type="tel" path="mobileNumber" pattern="[6-9]{1}[0-9]{9}"/>
		</div>
		
		
		<div class="form-cell">
				<h1>Address</h1>
				<form:textarea path="address" minlength="5" maxlength="250"/>
		</div>
		
		
		<div class="form-cell">
				<h1>Password</h1>
				<form:input type="password" path="password" minlength="6" maxlength="30"/>
		</div>
		
			
	<input class="form-submit-btn" type="submit" value="Signup">
	</form:form>
</div>
</t:layout>


