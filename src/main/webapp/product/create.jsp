<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/12/2021
  Time: 9:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 align="center">add new product</h1>
<form method="post">
    <div align="center">
        <table border="1" cellpadding="5">
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>price:</td>
                <td colspan="2" align="center"><input type="text" name="price" id="price"></td>
            </tr>
            <tr>
                <td>quantity:</td>
                <td><input type="text" name="quantity" id="quantity"></td>
            </tr>
            <tr>
                <td>color:</td>
                <td><input type="text" name="color" id="color"></td>
            </tr>
            <tr>
                <td>category:</td>
                <td><input type="text" name="category" id="category"></td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="add product">
                </td>
            </tr>
        </table>
    </div>

</form>
</body>
</html>
