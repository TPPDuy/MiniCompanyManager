<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Project</title>
    </head>
    <body>
        <h1>THÊM DỰ ÁN</h1>
        <form action="" method="POST">
            <div>
                Tên: <input type="text" id="txtName" name="txtName">
            </div>
            <div>
                Địa điểm: <input type="text" id="txtLocation" name="txtLocation">
            </div>
            <div>
                Số lượng nhân viên: <input type="number" id="txtNoE" name="txtNoE">
            </div>
            <div>
                Chi phí: <input type="text" id="txtCost" name="txtCost">
            </div>
            <div>
                Ngày bắt đầu: <input type="date" id="txtBegin" name="txtBegin">
            </div>
            <div>
                Ngày kết thúc: <input type="date" id="txtEnd" name="txtEnd">
            </div>
            <div>
                <button type="submit">Tạo mới</button>
            </div>
        </form>
        <a href="/trangchuproject">Xem danh sách dự án</a>
    </body>
</html>
