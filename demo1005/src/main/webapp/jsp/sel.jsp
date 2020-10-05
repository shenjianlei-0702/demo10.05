<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1px">
    <tr>
        <td>商品编号</td>
        <td>商品名称</td>
        <td>商品价格</td>
        <td>库存数量</td>
        <td>订单状态</td>
        <td>操作</td>
    </tr>
    <c:forEach var="item" items="${goods}">
    <tr>
        <td>${item.id}</td>
        <td>${item.goodsname}</td>
        <td>${item.goodsprice}</td>
        <td>${item.goodscount}</td>
        <td>
            <c:if test="${item.billstatus == 0}">
                待处理
            </c:if>
            <c:if test="${item.billstatus == 1}">
                处理中
            </c:if>
            <c:if test="${item.billstatus == 2}">
                已处理
            </c:if>
        </td>
        <td>
            <a href="/selById/${item.id}">修改</a>
        </td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
