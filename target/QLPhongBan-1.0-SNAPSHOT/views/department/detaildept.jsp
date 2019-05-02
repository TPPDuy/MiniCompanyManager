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
                Tên: <input readonly id="txtName" name="txtName" value="${requestScope.model.name}">
            </div>
            <p>Danh sách nhân viên: </p>
            <div>
                <c:forEach var="row" items="${requestScope.listItem}">
                    <tr>
                        <td>Mã nhân viên: <c:out value ="${row.eid}"/></td>
                        <br/>
                        <td>Tên nhân viên: <c:out value ="${row.ename}"/></td>
                        <br/>
                        <td>Lương: <c:out value ="${row.salary}"/></td>
                        <br/>
                        <td>Cấp bậc: <c:out value ="${row.deg}"/></td>
                    </tr>
                    <br>-----------------------------------------------</br>
                </c:forEach>
            </div>
        <a href="trangchudept">Xem danh sách phòng ban</a>
    </body>
</html>
