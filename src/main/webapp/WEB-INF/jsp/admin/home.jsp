<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<t:adminLayout>
    <div class="home-body">
		<div class="product-list">
           <h1 id="pdheading">PRODUCT LIST</h1>

           <div class="product-list-group">
            <c:forEach var="product" items="${productList}" varStatus="status">
                <div class="cart-item-container">
                    <img  src="${product.imageUrl}" alt="" />
                    <div class="cart-item-main-details">
                        <h1>${product.productName}</h1>
                        <h2>&#8377 ${product.price}</h2>
                        <h3><span class="grey">Quantity - </span>${product.quantity}</h3>
                    </div>
                    <div class="cart-item-btns">
                        <div class="cart-item-btn-group">
                            <a class="actionlink" href="/editProduct/${product.productId}">Edit</a>
                            <a class="actionlink" href="/deleteProduct/${product.productId}">Delete</a>
                        </div>
                    </div>
                </div>
        </c:forEach>
           </div>
        </div>  
        </div>  
           <!-- </div>
            <table id="products" >
                <tr >
                <th>S. No </th>
                <th>Product Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Category</th>
                <th colspan="2" >ACTION</th>
                 </tr> -->
                <!-- <c:forEach var="product" items="${productList}" varStatus="status">
                <tr>
                    <td>${status.index + 1}</td>
                    <td>${product.productName}</td>
                    <td>${product.price}</td>
                    <td>${product.quantity}</td>
                    <td>${product.category}</td>
                    <td><img style="object-fit: cover;" src="${product.imageUrl}" width="100" height="100"/></td>
                    <td>
                        <a class="actionlink" href="/editProduct/${product.productId}">Edit</a>

                     </td>
                    <td>    
                        <a class="actionlink" href="/deleteProduct/${product.productId}">Delete</a>
                    </td>
                             
                </tr>
                </c:forEach>             
            </table>
		</div>
    </div> -->
</t:adminLayout>

