<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<t:adminLayout>
	<div class="product-details-container">
        <h1 class="body-heading">PRODUCT DETAILS</h1>
           <div class="customer-product-details">
               <div class="customer-product-details-left">
                    <img src="${productModel.imageUrl}" />
               </div>

               <div class="customer-product-details-right">
                   <h1>${productModel.productName}</h1>
                   <p class="dark-grey">${productModel.description}</p>
                   <h5><span class="grey">In</span> ${productModel.category}</h5>
                   <h1 class="product-details-price">&#8377 ${productModel.price}</h1>
                   
               </div>
            </div>   
        </div>
        
</t:adminLayout>
        