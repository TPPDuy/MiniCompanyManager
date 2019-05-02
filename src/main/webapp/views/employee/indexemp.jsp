<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Home Employee</title>
    </head>
    <body>
        <h1>DANH SÁCH CÁC NHÂN VIÊN</h1>
        <c:forEach var="row" items="${requestScope.listItem}">
            <tr>
                <td>Mã nhân viên: <c:out value ="${row.eid}"/></td>
                <br/>
                <td>Tên nhân viên: <c:out value ="${row.ename}"/></td>
                <br/>
                <td>Lương: <c:out value ="${row.salary}"/></td>
                <br/>
                <td>Cấp bậc: <c:out value ="${row.deg}"/></td>
                <br/>
                <td>Phòng ban: <c:out value ="${row.department.name}"/></td>
                <br/>
                <td>
                    <a href="chitietemp?id=${row.id}">Chi Tiết Nhân Viên</a>
                    <a href="capnhatemp?id=${row.eid}">Chỉnh Sửa Nhân Viên</a>
                    <a href="xoaemp?id=${row.eid}">Xóa Nhân Viên</a>
                </td>
                <br>-----------------------------------------------------------</br>
            </tr>
        </c:forEach>
        <a href="taomoiemp">Thêm Nhân Viên</a>
    </body>
</html>
