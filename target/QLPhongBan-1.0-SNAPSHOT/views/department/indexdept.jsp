<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Home Department</title>
    </head>
    <body>
        <h1>DANH SÁCH CÁC PHÒNG BAN</h1>
        <c:forEach var="row" items="${requestScope.listItem}">
            <tr>
                <td>Mã phòng ban: <c:out value ="${row.id}"/></td>
                <br/>
                <td>Tên phòng ban: <c:out value ="${row.name}"/></td>
            
                <br/>
                <td>
                    <a href="chitietdept?id=${row.id}">Chi Tiết Phòng Ban</a>
                    <a href="capnhatdept?id=${row.id}">Chỉnh Sửa Phòng Ban</a>
                    <a href="xoadept?id=${row.id}">Xóa Phòng Ban</a>
                </td>
                <br>---------------------------------------------------------</br>
            </tr>
        </c:forEach>
        <a href="taomoidept">Thêm Phòng Ban</a>
    </body>
</html>