/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.qlphongban.bus;

import com.sam.qlphongban.dao.DepartmentDAO;
import com.sam.qlphongban.dao.EmployeeDAO;
import com.sam.qlphongban.dto.Department;
import com.sam.qlphongban.dto.Employee;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "Xoa Phong Ban", urlPatterns = {"/xoadept"})
public class DeleteDeptServlet extends HttpServlet {
    private EmployeeDAO objectDao = new EmployeeDAO();
    private DepartmentDAO objectObjectDao = new DepartmentDAO();
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/department/deletedept.jsp");
            rd.forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("txtId"));
        try{
            Department department = objectObjectDao.read(id);
            List<Employee> employees = objectDao.getByDepartment(id);
            for(Employee e : employees)
                objectDao.delete(e.getEid());
            objectObjectDao.delete(id);
            response.sendRedirect(request.getContextPath() + "/trangchudept");
        }catch(Exception ex)
        {
            
        }
    }

    
}
