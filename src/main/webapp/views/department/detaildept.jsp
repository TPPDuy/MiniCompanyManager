<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Department</title>
    </head>
    <body>
        <h1>CHI TIẾT PHÒNG BAN</h1>
            <div>
                Tên: <input disabled id="txtName" name="txtName" value="${requestScope.model.name}">
            </div>
            <p>Danh sách nhân viên: </p>
            <div>
                <c:forEach var="row" items="${requestScope.listItem}">
                    <tr>
                        <td><c:out value ="${row.eid}"/></td>
                        <td><c:out value ="${row.ename}"/></td>
                        <td><c:out value ="${row.salary}"/></td>
                        <td><c:out value ="${row.deg}"/></td>
                    </tr>
                    <br/>
                </c:forEach>
            </div>
        <a href="trangchudept">Xem danh sách phòng ban</a>
    </body>
</html>
