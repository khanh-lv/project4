/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Books;
import entity.Categories;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
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

/**
 *
 * @author black
 */
public class ShopServlet extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ShopServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ShopServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("Project4PU");
        EntityManager entity = factory.createEntityManager();

        List<Object> bookList = null;
        Query query = null;
        if (request.getParameter("search") == null && request.getParameter("catid") == null) {
            query = entity.createQuery("select b from Books b");
        }
        if (request.getParameter("search") != null && request.getParameter("catid") == null) {
            String search = request.getParameter("search");
            query = entity.createQuery("select b from Books b where b.title like '%" + search + "%'");
        }
        if (request.getParameter("search") == null && request.getParameter("catid") != null) {

                
                int catId = Integer.parseInt(request.getParameter("catid"));
                query = entity.createQuery("select b from Books b, Categories c where b.catId = c and c.id = " + catId);
            

        }
        if (request.getParameter("search") != null && request.getParameter("catid") != null) {
            try {
                String search = request.getParameter("search");
                int catId = Integer.parseInt(request.getParameter("catid"));
                query = entity.createQuery("select b from Books b, Categories c where b.title like '%" + search + "%' and b.catId = c and c.id = " + catId);
            } catch (Exception e) {
                query = entity.createQuery("select b from Books b");
            }

        }
        int page;
        if (request.getParameter("page") == null) {
            page = 1;
        } else {
            try{
                page = Integer.parseInt(request.getParameter("page"));
            } catch(Exception e){
                page = 1;
            }
            
        }
        int count = (int)query.getResultList().size()/12 + 1;
        System.out.println(count);
        bookList = query.setFirstResult((page -1)*12).setMaxResults(12).getResultList();
        
        Query query2 = entity.createQuery("select c from Categories c");
        List<Object> categories = query2.getResultList();
        entity.close();
        factory.close();
        request.setAttribute("categories", categories);
        request.setAttribute("bookList", bookList);
        request.setAttribute("count", count);
        RequestDispatcher rd = request.getRequestDispatcher("layout/shop.jsp");
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
        processRequest(request, response);
        
        String title = request.getParameter("title");
        String thumbnail = request.getParameter("thumbnail");
        String author = request.getParameter("author");
        String publishingCompany = request.getParameter("publishingCompany");
        int quantityInStock = Integer.parseInt(request.getParameter("quantityInStock"));
        int price = Integer.parseInt(request.getParameter("price"));
        String shortDes = request.getParameter("shortDes");
        String description = request.getParameter("description");
        int publishingYear = Integer.parseInt(request.getParameter("publishingYear"));
        int status = Integer.parseInt(request.getParameter("status"));
        int id = Integer.parseInt(request.getParameter("id"));
        Date date = new Date();


        //save into sdb
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("Project4PU");
        EntityManager em = factory.createEntityManager();

        Books books = new Books();
        books.setTitle(title);
        books.setThumbnail(thumbnail);
        books.setAuthor(author);
        books.setPublishingCompany(publishingCompany);
        books.setPublishingYear(publishingYear);
        books.setQuantityInStock(quantityInStock);
        books.setPrice(price);
        books.setShortDes(shortDes);
        books.setDescription(description);
        
        

        em.getTransaction().begin();
        em.persist(books);
        
        em.getTransaction().commit();
        
        RequestDispatcher rd = request.getRequestDispatcher("admin/shop.jsp");
        rd.forward(request, response);
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
