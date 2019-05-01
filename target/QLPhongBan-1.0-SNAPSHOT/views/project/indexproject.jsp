<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Project</title>
</head>
<body>
    <h1>DANH SÁCH CÁC DỰ ÁN</h1>
    <c:forEach var="row" items="${requestScope.listItem}">
        <tr>
            <td><c:out value ="${row.id}"/></td>
            <td><c:out value ="${row.name}"/></td>
        </tr>
        <td>
            <a href="chitietproject?id=${row.id}">Chi Tiết Dự Án</a>
            <a href="capnhatproject?id=${row.id}">Chỉnh Sửa Dự Án</a>
            <a href="xoaproject?id=${row.id}">Xóa Dự Án</a>
        </td>
    </c:forEach>
    <a href="taomoiproject">Thêm Dự Án Mới</a>
</body>