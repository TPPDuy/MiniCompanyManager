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
        <h1>XÓA PHÒNG BAN</h1>
        <form action="" metho="POST">
            <div>
                Nhập id phòng ban: <input type="text" id="txtId" name="txtId">
            </div>
            <div>
                <button type="submit">Xóa Phòng Ban</button>
            </div>
        </form>
        <a href="/trangchudept">Xem danh sách phòng ban</a>
    </body>
</html>
