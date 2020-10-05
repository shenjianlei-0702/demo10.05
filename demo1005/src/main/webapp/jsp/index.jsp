<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/sel" method="post">
    <table>
        <tr>
            <td>请选择区域:</td>
            <td>
                <select name="goodsdistrict">
                    <option value="0">--请选择--</option>
                    <option value="1">朝阳</option>
                    <option value="2">海淀</option>
                    <option value="3">丰台</option>
                    <option value="4">西城</option>
                    <option value="5">昌平</option>
                </select>
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
