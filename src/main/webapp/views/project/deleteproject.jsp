<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Project</title>
    </head>
    <body>
        <h1>XÓA DỰ ÁN</h1>
        <form action="" metho="POST">
            <div>
                Nhập id dự án: <input type="text" id="txtId" name="txtId">
            </div>
            <div>
                <button type="submit">Xóa dự án</button>
            </div>
        </form>
        <a href="trangchuproject">Xem danh sách dự án</a>
    </body>
</html>
