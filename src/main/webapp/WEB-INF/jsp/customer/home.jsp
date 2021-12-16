<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<t:customerLayout>
		<div class="customer-product-list">
		    <c:forEach var="product" items="${productList}" varStatus="status">
		    
				<div class="customer-product-item">
           			<div class="customer-product-img-container">
           				<img src="${product.imageUrl}"/>
	           		</div>
           		
    	       		<div class="customer-product-item-details">
        	   			<h2>${product.productName}</h2>
           				<h3 class="customer-product-item-price">&#8377 ${product.price}</h3>
           				
           				<a class="view-product-btn" href="/getProduct/${product.productId}">View</a>
           			</div>
           		</div>
           		
         	 </c:forEach>             
           
              
        </div>
</t:customerLayout>