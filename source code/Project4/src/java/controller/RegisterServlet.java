/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Roles;
import entity.Users;
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
public class RegisterServlet extends HttpServlet {

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
        RequestDispatcher rd = request.getRequestDispatcher("layout/register.jsp");
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
        
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
             
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
//        if(validate(fullname, email, password, repassword, address, phone)) {
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("Project4PU");
            EntityManager em = emf.createEntityManager();
            if(!checkk(email)) {
                Users users = new Users();
                users.setFullname(fullname);
                users.setEmail(email);
                if(password.equals(repassword)){
                    users.setPassword(password);
                } 
//                else {
//                    PrintWriter out = response.getWriter();
//                    out.print("<script>alert('Repassword and Password is incorrect!');</script>");
//                    RequestDispatcher rd = request.getRequestDispatcher("layout/register.jsp");
//                    rd.forward(request, response);
//                }  
                users.setAddress(address);
                users.setPhone(phone);
                users.setStatus(1);
                Query query = em.createQuery("select r from Roles r where r.role = 'customer'");
                List<Roles> roleList = query.getResultList();
                Roles role = roleList.get(0);
                users.setRoleId(role);
                java.util.Date date = new java.util.Date();  
                users.setCreatedAt(date);
                users.setUpdatedAt(date);
                em.getTransaction().begin();
                em.persist(users);
                em.getTransaction().commit();

                RequestDispatcher rd = request.getRequestDispatcher("layout/index.jsp");
                rd.forward(request, response);
            } else {
                
                PrintWriter out = response.getWriter();
                out.print("<script>alert('Register fail, please check again!');</script>");
                RequestDispatcher rd = request.getRequestDispatcher("layout/register.jsp");
                rd.forward(request, response);
            }    
//        }
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
    public boolean validate(String fullname, String email, String password, String address, String phone, String repassword) {  
        
        
        return true;
    }
    public boolean checkk(String email) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("Project4PU");
        EntityManager em = emf.createEntityManager();
        Query query = em.createQuery("select u from Users u where u.email = '" + email+"'");
        List<Users> userList = query.getResultList();
        
        if(userList.size() == 0) {
            return false;
        }
        return true;
    }
}
