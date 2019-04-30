/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.qlphongban.dao;


import com.sam.qlphongban.dto.Employee;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class EmployeeDAO
{
    private EntityManager em;
    private EntityManagerFactory emf;
    public EmployeeDAO()
    {
        emf = Persistence.createEntityManagerFactory("QLPhongBanService");
        em = emf.createEntityManager();
    }

    public List<Employee> readAll()
    {
        em.clear();
        em.getTransaction().begin();
        List<Employee> result = em.createQuery("from employees", Employee.class).getResultList();
        em.getTransaction().commit();
        return result;
    }

    public void create(Employee employee)
    {
        em.getTransaction().begin();
        em.persist(employee);
        em.getTransaction().commit();
    }

    public Employee read(int id)
    {
        return em.find(Employee.class, id);
    }
    
    public List<Employee> getByDepartment(int id)
    {
        em.clear();
        em.getTransaction().begin();
        List<Employee> result = em.createNativeQuery(String.format("from employees where did = %d", id), Employee.class).getResultList();
        em.getTransaction().commit();
        return result;
    }
    
    public void update(Employee employee)
    {
        Employee curr = em.find(Employee.class, employee.getEid());
        em.getTransaction().begin();
        curr.setEname(employee.getEname());
        curr.setDeg(employee.getDeg());
        curr.setDepartment(employee.getDepartment());
        curr.setSalary(employee.getSalary());
        em.getTransaction().commit();
    }

    public void delete(int id)
    {
        Employee curr = em.find(Employee.class, id);
        em.getTransaction().begin();
        em.remove(curr);
        em.getTransaction().commit();
    }
}
