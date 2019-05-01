/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.qlphongban.bus;

import com.sam.qlphongban.dao.DepartmentDAO;
import com.sam.qlphongban.dto.Department;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class EditDeptServlet extends HttpServlet {

    private DepartmentDAO objectObjectDao = new DepartmentDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            int id = Integer.parseInt(request.getParameter("id"));
            Department item = objectObjectDao.read(id);
            request.setAttribute("model", item);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/department/editdept.jsp");
            rd.forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("txtName");
        Department dept = objectObjectDao.read(id);
        dept.setName(name);
        try{
            objectObjectDao.update(dept);
            response.sendRedirect(request.getContextPath() + "/trangchudept");
        }catch(Exception ex)
        {
            
        }
    }
}
