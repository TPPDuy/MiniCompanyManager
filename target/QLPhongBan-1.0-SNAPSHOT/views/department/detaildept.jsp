<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Employee</title>
    </head>
    <body>
        <h1>CHI TIẾT PHÒNG BAN</h1>
            <div>
                Tên: <span id="txtName" name="txtName">${requestScope.model.name}"</span>
            </div>
            <p>Danh sách nhân viên: </p>
            <div>
                <c:forEach var="row" items="${requestScope.listItem}">
                    <tr>
                        <td><c:out value ="${row.id}"/></td>
                        <td><c:out value ="${row.name}"/></td>
                    </tr>
                </c:forEach>
            </div>
        <a href="/trangchudept">Xem danh sách phòng ban</a>
    </body>
</html>
