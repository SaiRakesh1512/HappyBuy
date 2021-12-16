<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<t:layout>
	<div class="login-body">
		<div class="login-left-body>
			<img src="${contextPath}/resources/images/login-pic.jpg" alt="furniture illustration" />
		</div>
		<form:form  class="login-form" action="login" method="post"  modelAttribute="loginModel">
			<div class="form-cell">
				<h1>Email</h1>
				<form:input type="email" class="form-cell-input" path="email"/>
			</div>
		
			<div class="form-cell">
				<h1>Password</h1>
				<form:input type="password" class="form-cell-input" path="password" minlength="6" maxlength="30"/>
			</div>
		
			<input class="form-submit-btn" type="submit" value="Login">
		</form:form>
	</div>
</t:layout>
	