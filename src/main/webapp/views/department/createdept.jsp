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
        <h1>THÊM PHÒNG BAN</h1>
        <form action="" metho="POST">
            <div>
                Tên phòng ban: <input type="text" id="txtName" name="txtName">
            </div>
            <div>
                <button type="submit">Tạo mới</button>
            </div>
        </form>
        <a href="/trangchudept">Xem danh sách phòng ban</a>
    </body>
</html>
