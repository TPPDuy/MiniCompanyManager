<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Project</title>
    </head>
    <body>
        <h1>CHỈNH SỬA THÔNG TIN DỰ ÁN</h1>
        <form action="" method="POST">
            <div>
                Tên: <input type="text" id="txtName" name="txtName" value="${requestScope.model.name}">
            </div>
            <div>
                Địa điểm: <input type="text" id="txtSalary" name="txtSalary" value="${requestScope.model.location}">
            </div>
            <div>
                Số lượng nhân viên: <input type="number" id="txtNoE" name="txtNoE" value="${requestScope.model.numOfEmp}">
            </div>
            <div>
                Chi phí: <input type="text" id="txtCost" name="txtCost" value="${requestScope.model.cost}">
            </div>
            <div>
                Ngày bắt đầu: <input type="date" id="txtBegin" name="txtBegin" value="${requestScope.model.begin}">
            </div>
            <div>
                Ngày kết thúc: <input type="date" id="txtEnd" name="txtEnd" value="${requestScope.model.end}">
            </div>
            <div>
                <button type="submit">Chỉnh sửa</button>
            </div>
        </form>
        <a href="trangchuproject">Xem danh sách dự án</a>
    </body>
</html>
