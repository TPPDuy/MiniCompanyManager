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
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class CreateEmpServlet extends HttpServlet {
   private EmployeeDAO objectDao = new EmployeeDAO();
   private DepartmentDAO objectObjectDao = new DepartmentDAO();

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       try{
           List<Department> listItem = objectObjectDao.readAll();
           request.setAttribute("listItem", listItem);
           RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/employee/createemp.jsp");
           rd.forward(request, response);
       } catch(Exception ex)
       {
           //Logger.getLogger(CreateEmpServlet.class.getName().log(Level.SEVERE, null, ex));
       }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       try{
           String name = request.getParameter("txtName");
           double salary = Double.parseDouble(request.getParameter("txtSalary"));
           String deg = request.getParameter("txtDeg");
           int deptId = Integer.parseInt(request.getParameter("txtDepartId"));
           Department dept = objectObjectDao.read(deptId);
           Employee item = new Employee(name, salary, deg, dept);
           objectDao.create(item);
           response.sendRedirect(request.getContextPath() + "/trangchuemp");
       } catch(Exception ex)
       {
           //Logger.getLogger(CreateEmpServlet.class.getName().log(Level.SEVERE, null, ex));
       }
    }
  
}
