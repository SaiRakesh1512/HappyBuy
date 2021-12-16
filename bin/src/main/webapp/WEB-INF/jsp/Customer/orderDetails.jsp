<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<t:customerLayout>	
	<div class="order-body">
           <h1 id="pdheading">ORDER ITEMS</h1>

            <div class="order-items">
                <c:forEach var="cartItem" items="${cartItems}" varStatus="status">
                    <div class="cart-item-container">
                        <img  src="${cartItem.productId.imageUrl}" alt="" />
                        <div class="cart-item-main-details">
                            <h1>${cartItem.productId.productName}</h1>
                            <h2>&#8377 ${cartItem.productId.price}</h2>
                            <h3><span class="grey">Quantity - </span>${cartItem.quantity}</h3>
                        </div>
                    </div>
                </c:forEach>
            </div>

            <div class="customer-order-details">
                <h1>Customer details</h1>
                <form method="post" action="placeOrder" >
                    <div class="form-cell">
                        <h1 class="order">Name</h1>
                        <input name="name">
                    </div>

                    <div class="form-cell">
                        <h1>Address</h1>
                        <textarea name="address" placeholder="type address..." minlength="5" maxlength="300" rows="5" cols="40"></textarea>
                    </div>
                    
                    <div class="form-cell">
                        <h1>Contact</h1>
                        <input type="tel" name="contactNumber" pattern="[6-9]{1}[0-9]{9}"/>                    
                    </div>
                    
                    <div class="order-payment-mode">
                        <h2>Mode of Payment</h2>
                        <input type="radio" id="cod"  name="paymentType" value="COD">
                        <label for="cod">Cash on Delivery</label><br>
                        <input type="radio" id="OnlinePayment" name="paymentType" value="OnlinePayment">
                        <label for="OnlinePayment">Online Payment</label><br>
                    </div>
                    <input type="submit" class="order-place-btn" name="submit" value="Place Order">
                </form>
            </div>
        </div>
        </t:customerLayout>

