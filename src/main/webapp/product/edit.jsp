<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/12/2021
  Time: 10:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <h1>Product Management</h1>
    <div align="center">
        <form method="post">
            <table border="1" cellpadding="5">
                <caption>
                    <h2>Edit product</h2>
                </caption>
                <c:if test="${products!=null}">
                    <input type="hidden" name="id" value="<c:out value='${products.id}'/>"/>
                </c:if>
                <tr>
                    <th>name</th>
                    <td>
                        <input type="text" name="name" size="45" value="<c:out value='${products.name}'/>"/>
                    </td>
                </tr>
                <tr>
                    <th>price</th>
                    <td>
                        <input type="text" name="price" size="45" value="<c:out value='${products.price}'/>"/>
                    </td>
                </tr>
                <tr>
                    <th>quantity</th>
                    <td>
                        <input type="text" name="quantity" size="45" value="<c:out value='${products.quantity}'/>"/>
                    </td>
                </tr>
                <tr>
                    <th>color</th>
                    <td>
                        <input type="text" name="color" size="45" value="<c:out value='${products.color}'/>"/>
                    </td>
                </tr>
                <tr>
                    <th>category</th>
                    <td>
                        <input type="text" name="category" size="45" value="<c:out value='${products.category}'/>"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Update"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</center>
</body>
</html>
