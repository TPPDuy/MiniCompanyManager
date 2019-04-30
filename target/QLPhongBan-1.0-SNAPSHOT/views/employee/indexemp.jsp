<%-- 
    Document   : indexemp
    Created on : Apr 30, 2019, 8:47:44 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Employee</title>
    </head>
    <body>
        <p>DANH SÁCH CÁC NHÂN VIÊN</p>
        <c:forEach var="row" items="${requestScope.listItem}">
            <tr>
                <td><c:out value ="${row.eid}"/></td>
                <td><c:out value ="${row.name}"/></td>
                <td><c:out value ="${row.salary}"/></td>
                <td><c:out value ="${row.deg}"/></td>
                <td><c:out value ="${row.department.name}"/></td>
            </tr>
            <td>
                <a href="capnhatemp?id=${row.eid}">Chỉnh Sửa Nhân Viên</a>
                <a href="xoaemp?id=${row.eid}">Xóa Nhân Viên</a>
            </td>
        </c:forEach>
        <a href="taomoiemp">Thêm Nhân Viên</a>
    </body>
</html>
