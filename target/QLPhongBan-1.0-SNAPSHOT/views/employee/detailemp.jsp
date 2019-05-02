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
        <h1>CHI TIẾT NHÂN VIÊN</h1>
        <div>
            Tên: <input readonly id="txtName" name="txtName" value ="${row.ename}">
        </div>
        <div>
            Lương: <input readonly id="txtSalary" name="txtSalary" value ="${row.salary}">
        </div>
        <div>
            Cấp bậc: <input readonly id="txtDeg" name="txtDeg" value ="${row.deg}">
        </div>
        <div>
            Phòng Ban: <input readonly id="txtDeg" name="txtDepartName" value ="${row.department.name}">
        </div>
        <a href="trangchuemp">Xem danh sách nhân viên</a>
    </body>
</html>
