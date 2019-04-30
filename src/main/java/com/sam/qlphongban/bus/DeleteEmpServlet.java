/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.qlphongban.bus;

import com.sam.qlphongban.dao.DepartmentDAO;
import com.sam.qlphongban.dao.EmployeeDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class DeleteEmpServlet extends HttpServlet {
    private EmployeeDAO objectDao = new EmployeeDAO();
    private DepartmentDAO objectObjectDao = new DepartmentDAO();
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try{
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/employee/deleteemp.jsp");
            rd.forward(request, response);
        }catch(Exception ex)
        {
            
        }
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("txtId"));
        try{
            objectDao.delete(id);
            response.sendRedirect(request.getContextPath() + "/trangchuemp");
        }catch(Exception ex)
        {
            
        }
    }

}
