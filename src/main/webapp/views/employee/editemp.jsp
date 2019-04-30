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
        <h1>CHỈNH SỬA THÔNG TIN NHÂN VIÊN</h1>
        <form action="" metho="POST">
            <div>
                Tên: <input type="text" id="txtName" name="txtName" value="${requestScope.model.ename}">
            </div>
            <div>
                Lương: <input type="text" id="txtSalary" name="txtSalary" value="${requestScope.model.salary}">
            </div>
            <div>
                Cấp bậc: <input type="text" id="txtDeg" name="txtDeg" value="${requestScope.model.deg}">
            </div>
            <div>
                Phòng Ban:
                <select name="txtDepartId">
                    <c:forEach var="item" items="${requestScope.listItem}">
                        <option value="${item.id}">
                            <c:out value="${item.name}"/>
                        </option>
                    </c:forEach>
                </select>
            </div>
            <div>
                <button type="submit">Chỉnh sửa</button>
            </div>
        </form>
        <a href="/trangchuemp">Xem danh sách nhân viên</a>
    </body>
</html>