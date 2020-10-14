/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PC
 */
public class LoginAdminServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("admin/loginadmin.jsp");
        rd.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("Project4PU");
        EntityManager em = emf.createEntityManager();
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        Query q = em.createQuery("select u from Users u, Roles r where u.email = '"+ email +"' and u.password = '"+password+"' and u.roleId = r and r.role = 'admin'");
        List<Object> userList = q.getResultList();
        
        if (userList.size() > 0) {
            HttpSession session = request.getSession(false);
            session.setAttribute("status", 1);
            session.setAttribute("user", userList.get(0));
//            session.setAttribute("user", userList.get(0));
//            Users user = (Users) session.getAttribute("user");
//            PrintWriter out = response.getWriter();
//            out.print("Fullname: " +user.getFullname());
            RequestDispatcher rd = request.getRequestDispatcher("admin/dashboard.jsp");
            rd.forward(request, response);
        } else {
            // tao alert thong bao cho nguoi dung biet la email hay password bi sai. yu cau ho nhap lai
            PrintWriter out = response.getWriter();
            out.println("<script>alert('Email or password is incorrect!');</script>");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/admin/loginadmin.jsp");
            rd.include(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
