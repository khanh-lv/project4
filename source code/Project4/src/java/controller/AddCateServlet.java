/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Categories;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PC
 */
public class AddCateServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private int id = 0;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Categories cate = new Categories(0);
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("Project4PU");
        EntityManager em = factory.createEntityManager();
        if (request.getParameter("id") != null) {

            id = Integer.parseInt(request.getParameter("id"));
            cate = em.find(Categories.class, id);
        }
        em.close();
        factory.close();
        request.setAttribute("cate", cate);
        RequestDispatcher rd = request.getRequestDispatcher("admin/addCate.jsp");
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

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        String catName = request.getParameter("catName");
        Date date = new Date();
//        id = Integer.parseInt(request.getParameter("id"));

        EntityManagerFactory factory = Persistence.createEntityManagerFactory("Project4PU");
        EntityManager em = factory.createEntityManager();
        if (id == 0) {
            Categories cate = new Categories();
            cate.setCatName(catName);
            cate.setCreatedAt(date);
            cate.setStatus(1);
            em.getTransaction().begin();
            em.persist(cate);
            em.getTransaction().commit();

        } else {
            Categories editCate = em.find(Categories.class, id);
            em.getTransaction().begin();
            editCate.setCatName(catName);
            editCate.setCreatedAt(date);
            editCate.setStatus(1);

            em.getTransaction().commit();
        }

        response.sendRedirect("themtheloai");
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
