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
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
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
 * @author MTD
 */
public class AddAdminServlet extends HttpServlet {

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
        RequestDispatcher rd = request.getRequestDispatcher("admin/addAdmin.jsp");
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
        if(validate(fullname, email, password, repassword, address, phone)) {
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("Project4PU");
            EntityManager em = emf.createEntityManager();
            if(!checkk(email)) {
                Users users = new Users();
                users.setFullname(fullname);
                users.setEmail(email);
               
                try {
                    users.setPassword(convertHashToString(password));
                } catch (NoSuchAlgorithmException ex) {
                    Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
               
                users.setAddress(address);
                users.setPhone(phone);
                users.setStatus(1);
                Query query = em.createQuery("select r from Roles r where r.role = 'admin'");
                List<Roles> roleList = query.getResultList();
                Roles role = roleList.get(0);
                users.setRoleId(role);
                java.util.Date date = new java.util.Date();  
                users.setCreatedAt(date);
                users.setUpdatedAt(date);
                em.getTransaction().begin();
                em.persist(users);
                em.getTransaction().commit();

                RequestDispatcher rd = request.getRequestDispatcher("admin/dashboard.jsp");
                rd.forward(request, response);
            } else {
                
                request.setAttribute("message1", "Fail!");

                request.setAttribute("message", "Email has been registered, please check again!");
                RequestDispatcher rd = request.getRequestDispatcher("addmin/addadmin.jsp");
                rd.forward(request, response);
            }    
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

        public boolean validate(String fullname, String email, String password, String address, String phone, String repassword) { 
        if (!Pattern.matches("[a-zA-Z ]{1,50}", fullname)) {  
            return false;
        }  
        String emailRegex = "^[a-z][a-z0-9_\\.]{5,32}@[a-z0-9]{2,}.[a-z]{2,4}.[a-z]{2,4}";
        if (!Pattern.matches(emailRegex, email)) {  
            return false;
        }  
        if (address.length() > 250) {
            return false;
        }
        if (fullname.length() > 50) {
            return false;
        }
        if (password.length() > 15) {
            return false;
        }
        if (phone.length() > 15 && phone.length() < 10) {
            return false;
        }
//        Ít nhất một chữ cái viết hoa tiếng Anh ,(?=.*?[A-Z])
//        Ít nhất một chữ cái tiếng Anh viết thường, (?=.*?[a-z])
//        Ít nhất một chữ số, (?=.*?[0-9])
//        Ít nhất một nhân vật đặc biệt, (?=.*?[#?!@$%^&*-])
//        Chiều dài tối thiểu tám .{8,}(với các neo)
        if (!Pattern.matches("^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,15}", password)) {  
            return false;
        }  
        
//        if (!password.equals(repassword)) {
//            return false;
//        }
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
