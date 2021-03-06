/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.qlphongban.bus;

import com.sam.qlphongban.dao.ProjectDAO;
import com.sam.qlphongban.dto.Project;
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
public class IndexProjectServlet extends HttpServlet {

    private ProjectDAO objectDao = new ProjectDAO();
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
           List<Project> listItem = objectDao.readAll();
           request.setAttribute("listItem", listItem);
           RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/project/indexproject.jsp");
           rd.forward(request, response);
       } catch(Exception ex)
       {
           //Logger.getLogger(CreateEmpServlet.class.getName().log(Level.SEVERE, null, ex));
       }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
}
