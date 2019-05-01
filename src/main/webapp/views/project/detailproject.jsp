<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Project</title>
    </head>
    <body>
        <h1>CHI TIẾT DỰ ÁN</h1>
            <div>
                Tên: <span id="txtName" name="txtName">${requestScope.model.name}"</span>
            </div>
            <div>
                Địa điểm: <span id="txtLocation" name="txtLocation">${requestScope.model.location}"</span>
            </div>
            <div>
                Số lượng nhân viên: <span id="txtNoE" name="txtNoE">${requestScope.model.numOfEmp}"</span>
            </div>
            <div>
                Ngày bắt đầu: <span id="txtBegin" name="txtBegin">${requestScope.model.begin}"</span>
            </div>
            <div>
                Ngày kết thúc: <span id="txtEnd" name="txtEnd">${requestScope.model.end}"</span>
            </div>
            <p>Danh sách nhân viên tham gia: </p>
            <div>
                <c:forEach var="row" items="${requestScope.listItem}">
                    <tr>
                        <td><c:out value ="${row.id}"/></td>
                        <td><c:out value ="${row.name}"/></td>
                    </tr>
                </c:forEach>
            </div>
        <a href="trangchuproject">Xem danh sách dự án</a>
    </body>
</html>
