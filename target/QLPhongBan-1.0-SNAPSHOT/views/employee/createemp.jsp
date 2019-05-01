<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Employee</title>
    </head>
    <body>
        <h1>THÊM NHÂN VIÊN</h1>
        <form action="" method="POST">
            <div>
                Tên: <input type="text" id="txtName" name="txtName">
            </div>
            <div>
                Lương: <input type="text" id="txtSalary" name="txtSalary">
            </div>
            <div>
                Cấp bậc: <input type="text" id="txtDeg" name="txtDeg">
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
                <button type="submit">Tạo mới</button>
            </div>
        </form>
        <a href="trangchuemp">Xem danh sách nhân viên</a>
    </body>
</html>
