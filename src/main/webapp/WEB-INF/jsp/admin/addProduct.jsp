<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<t:adminLayout>
	<div class="edit-product-body">
		<h1 class="body-heading">ADD PRODUCT</h1>

		<form:form method="post" action="addProduct" modelAttribute="productModel" >
			<div class="form-cell">
				<h1 class="order">Product Name</h1>
				<form:input path="productName" minlength="3" maxlength="30"/>
			</div>
		
		<div class="form-cell">
			<h1 class="order">Price</h1>
			<form:input type="number" path="price"/>
		</div>
		
		<div class="form-cell">
			<h1 class="order">Description</h1>
			<form:textarea path="description" minlength="5" maxlength="750" rows="5" cols="40"/>
		</div>
		
		<div class="form-cell">
			<h1 class="order">Quantity</h1>
			<form:input type="number" path="quantity"/>
		</div>

		<div class="form-cell">
			<h1 class="order">Category</h1>
			<form:input path="category" minlength="3" maxlength="30"/>
		</div>
		
		<div class="form-cell">
			<h1 class="order">Product Image link</h1>
			<form:textarea path="imageUrl" minlength="5" maxlength="300" rows="5" cols="40"/>
		</div>
		
		<input class="order-place-btn" type="submit" value="Add Product">
	</form:form>
</div>
</t:adminLayout>

