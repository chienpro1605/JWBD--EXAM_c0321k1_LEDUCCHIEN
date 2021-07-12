<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/12/2021
  Time: 9:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="get">
    <input type="text" name="name">
    <input type="hidden" name="action" value="search">
    <input type="submit" value="search product">

    <a type="hidden" href="/products">back to people list</a>
</form>
<h1 align="center">LIST PRODUCT</h1>
<h2 align="center"><a HREF="/products?action=create">ADD NEW PRODUCT</a></h2>
<form>
    <div align="center">
        <table border="1" cellpadding="5">
            <tr>
                <td>ID</td>
                <td>Name Product</td>
                <td>Price</td>
                <td>quantity</td>
                <td>color</td>
                <td>cateory</td>
                <td>action</td>
            </tr>
            <c:forEach items="${products}" var="products">
                <tr>
                    <td><c:out value="${products.id}"></c:out></td>
                    <td><c:out value="${products.name}"></c:out></td>
                    <td><c:out value="${products.price}"></c:out></td>
                    <td><c:out value="${products.quantity}"></c:out></td>
                    <td><c:out value="${products.color}"></c:out></td>
                    <td><c:out value="${products.category}"></c:out></td>
                    <td>
                        <a href="/products?action=edit&id=${products.id}">Edit</a>
                        <a href="/products?action=delete&id=${products.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</form>
</body>
</html>
