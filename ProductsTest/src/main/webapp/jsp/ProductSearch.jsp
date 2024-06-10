<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>產品資訊</title>
    <style>
        body {
            text-align: center;
            background-color: lightyellow;
            font-family: Arial, sans-serif;
        }

        h2 {
            color: #333;
        }

        table {
            margin: 20px auto;
            border-collapse: collapse;
            width: 50%;
        }

        table, th, td {
            border: 1px solid #ddd;
            padding: 12px;
        }

        th {
            background-color: #a8fefa;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin: 4px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="button"] {
            padding: 10px 20px;
            margin: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="button"]:hover {
            background-color: #45a049;
        }

        .btn-return {
            background-color: #2196F3;
        }

        .btn-return:hover {
            background-color: #0b7dda;
        }
    </style>
</head>
<body>
    <div align="center">
        <h2>產品資訊</h2>
        <c:if test="${not empty product}">
            <table>
                <tr>
                    <th>產品編號</th>
                    <td><input type="text" disabled value="${product.productid}"></td>
                </tr>
                <tr>
                    <th>產品名稱</th>
                    <td><input type="text" disabled value="${product.productName}"></td>
                </tr>
                <tr>
                    <th>價格</th>
                    <td><input type="text" disabled value="${product.price}"></td>
                </tr>
                <tr>
                    <th>產品描述</th>
                    <td><input type="text" disabled value="${product.description}"></td>
                </tr>
                <tr>
                    <th>庫存數量</th>
                    <td><input type="text" disabled value="${product.stockQuantity}"></td>
                </tr>
            </table>
            <br>
            <input type="button" onclick="updateProduct(${product.productid})" value="更新">
            <input type="button" class="btn-return" onclick="returnProduct()" value="返回上一頁">
        </c:if>
        <c:if test="${empty product}">
            <p>找不到指定的產品。</p>
        </c:if>
    </div>
    <script>
        function updateProduct(productid) {
            var url = "./jsp/ProductUpdate.jsp?productid=" + productid;
            window.location.href = url;
        }

        function returnProduct() {
            var url = "./DemoProductServletAction?action=list";
            window.location.href = url;
        }
    </script>
</body>
</html>


