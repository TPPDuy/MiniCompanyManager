<%-- 
    Document   : editdept
    Created on : Apr 30, 2019, 1:35:12 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>CHỈNH SỬA THÔNG TIN PHÒNG BAN</h1>
        <form action="" metho="POST">
            <div>
                Tên phòng ban: <input type="text" id="txtName" name="txtName" value="${requestScope.model.name}">
            </div>
            <div>
                <button type="submit">Chỉnh sửa</button>
            </div>
        </form>
        <a href="/trangchudept">Xem danh sách phòng ban</a>
    </body>
</html>
