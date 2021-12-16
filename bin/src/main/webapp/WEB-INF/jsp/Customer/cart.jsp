<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<t:customerLayout>
	<div class="cart-body">	
           <h1 class="body-heading">CART</h1>
            
        
        <form method="post" action="proceedOrder" >
            <c:forEach var="cartItem" items="${cartItems}" varStatus="status">
                <div class="cart-item-container">
                    <img  src="${cartItem.productId.imageUrl}" alt="" />
                    <div class="cart-item-main-details">
                        <h1>${cartItem.productId.productName}</h1>
                        <h2>&#8377 ${cartItem.productId.price}</h2>
                        <h3><span class="grey">Quantity - </span>${cartItem.quantity}</h3>
                    </div>
                    <div class="cart-item-btns">
                        <div class="cart-item-btn-group">
                            <a class="actionlink" href="/getProduct/${cartItem.productId.productId}">View</a>
                            <a class="actionlink" href="/removeCartItem/${cartItem.cartItemId}">Remove</a>
                        </div>
                        <div class="cart-item-check-btn">
                            <span> Check to confirm </span> <input type="checkbox" value="${cartItem.cartItemId}" name="proceedToPayment">
                        </div>
                    </div>
           </div>
        </c:forEach>
          
        <input type="submit" name="submit" value="Proceed Order" class="cart-proceed-btn">
    </form>
    </div>

    	   
</t:customerLayout>

