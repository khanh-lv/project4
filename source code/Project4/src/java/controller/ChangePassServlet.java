/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Users;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
 * @author MTD
 */
public class ChangePassServlet extends HttpServlet {

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
        RequestDispatcher rd = request.getRequestDispatcher("layout/my-account.jsp");
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
        
        try {
            
            HttpSession session = request.getSession(false);
            Users user = (Users) session.getAttribute("user");
            String password = convertHashToString(request.getParameter("password"));
            
            if(password.equals(user.getPassword())) {
                String newpass = request.getParameter("newpass");
                String newrepass = request.getParameter("newrepass");
                if(newpass.equals(newrepass)) {
                    int id = user.getId();
                    Users editpass = em.find(Users.class, id);
    
                    em.getTransaction().begin();
                    
                    
                    editpass.setPassword(convertHashToString(newpass));
                    
                    em.getTransaction().commit();
             
                    session.removeAttribute("status");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/layout/login.jsp");
                    rd.include(request, response);
//                    rd.forward(request, response); 
                
                }
            } else {
                PrintWriter out = response.getWriter();
                out.println("<script>alert('Curent password is incorrect!');</script>");
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/layout/my-account.jsp");
                rd.include(request, response);
            }
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(ChangePassServlet.class.getName()).log(Level.SEVERE, null, ex);
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
    private String convertHashToString(String text) throws NoSuchAlgorithmException {      
        MessageDigest md = MessageDigest.getInstance("MD5");
        byte[] hashInBytes = md.digest(text.getBytes(StandardCharsets.UTF_8));
        StringBuilder stringpass = new StringBuilder();
        for (byte b : hashInBytes) {
            stringpass.append(String.format("%02x", b));
        }
        return stringpass.toString();
    }
    
}
