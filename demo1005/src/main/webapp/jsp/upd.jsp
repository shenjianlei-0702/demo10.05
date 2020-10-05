<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/upd" method="post">
    <table>
        <tr>
            <td>商品编号:</td>
            <td>
                <input type="text" name="id" readonly value="${goodsById.id}">
                <input type="hidden" name="goodsdistrict" value="${goodsById.goodsdistrict}">
            </td>
        </tr>
        <tr>
            <td>商品名称:</td>
            <td><input type="text" name="goodsname"  value="${goodsById.goodsname}"></td>
        </tr>
        <tr>
            <td>商品价格:</td>
            <td><input type="text" name="goodsprice"  value="${goodsById.goodsprice}"></td>
        </tr>
        <tr>
            <td>商品数量:</td>
            <td><input type="text" name="goodscount"   value="${goodsById.goodscount}"></td>
        </tr>
        <tr>
            <td>订单状态:</td>
            <td>
                <select name="billstatus">
                    <option <c:if test="${goodsById.billstatus == 0}"> selected </c:if> value="0">待处理</option>
                    <option <c:if test="${goodsById.billstatus == 1}"> selected </c:if> value="1">处理中</option>
                    <option <c:if test="${goodsById.billstatus == 2}"> selected </c:if> value="2">已处理</option>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="提交">
                <input type="reset" value="重置">
            </td>
        </tr>

    </table>
</form>
</body>
</html>
