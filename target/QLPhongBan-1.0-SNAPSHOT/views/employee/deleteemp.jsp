<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Employee</title>
    </head>
    <body>
        <h1>XÓA NHÂN VIÊN</h1>
        <form action="" method="POST">
            <div>
                Nhập id nhân viên: <input type="text" id="txtId" name="txtId">
            </div>
            <div>
                <button type="submit">Xóa nhân viên</button>
            </div>
        </form>
        <a href="trangchuemp">Xem danh sách nhân viên</a>
    </body>
</html>
