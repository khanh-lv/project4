/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static com.sun.xml.ws.spi.db.BindingContextFactory.LOGGER;
import entity.Books;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author PC
 */
@WebServlet(name = "AddShopServlet", urlPatterns = {"/addshop"})
@MultipartConfig
public class AddShopServlet extends HttpServlet {

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
        Books books = new Books(0);
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("Project4PU");
        EntityManager em = factory.createEntityManager();
        if (request.getParameter("id") != null) {
            
            id = Integer.parseInt(request.getParameter("id"));
            books = em.find(Books.class, id);
        }
        Query query = em.createQuery("select c from Categories c");
        List<Object> categories = query.getResultList();
        em.close();
        factory.close();
        request.setAttribute("books", books);
        request.setAttribute("categories", categories);
        RequestDispatcher rd = request.getRequestDispatcher("admin/addShop.jsp");
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

        String title = request.getParameter("title");
        String file = request.getParameter("thumbnail");
        String author = request.getParameter("author");
        String publishingCompany = request.getParameter("publishingCompany");
        int quantityInStock = Integer.parseInt(request.getParameter("quantityInStock"));
        int price = Integer.parseInt(request.getParameter("price"));
        String shortDes = request.getParameter("shortDes");
        String description = request.getParameter("description");
        int publishingYear = Integer.parseInt(request.getParameter("publishingYear"));
//        int status = Integer.parseInt(request.getParameter("status"));
        //Integer.parseInt(request.getParameter("id"));
        Date date = new Date();

        final String path = "layout\\image\\products";
        final Part filePart = request.getPart("file");
        final String fileName = getFileName(filePart);

        OutputStream out = null;
        InputStream filecontent = null;
        final PrintWriter writer = response.getWriter();

        try {
            out = new FileOutputStream(new File(path + File.separator
                    + fileName));
            filecontent = filePart.getInputStream();

            int read = 0;
            final byte[] bytes = new byte[1024];

            while ((read = filecontent.read(bytes)) != -1) {
                out.write(bytes, 0, read);
            }
            writer.println("New file " + fileName + " created at " + path);
            writer.println("<center><a href='listShop?id=\" + id + \"'>Danh Sách</a></center>");
            LOGGER.log(Level.INFO, "File{0}being uploaded to {1}",
                    new Object[]{fileName, path});
        } catch (FileNotFoundException fne) {

            writer.println("<br/> ERROR: " + fne.getMessage());

        }

        //save into sdb
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("Project4PU");
        EntityManager em = factory.createEntityManager();

        if (id == 0) {
            Books books = new Books();
            books.setTitle(title);
            books.setStatus(1);
            books.setThumbnail("layout/image/products/" + fileName);
            books.setAuthor(author);
            books.setPublishingCompany(publishingCompany);
            books.setPublishingYear(publishingYear);
            books.setQuantityInStock(quantityInStock);
            books.setPrice(price);
            books.setShortDes(shortDes);
            books.setDescription(description);
            books.setCreatedAt(date);
            books.setId(id);

            em.getTransaction().begin();
            em.persist(books);

            em.getTransaction().commit();

        } else {
            System.out.println(request.getParameter("id: " + id));
            Books editbooks = em.find(Books.class, id);
            em.getTransaction().begin();
            editbooks.setTitle(title);
            editbooks.setStatus(1);
            editbooks.setThumbnail("layout/image/products/" + fileName);
            editbooks.setAuthor(author);
            editbooks.setPublishingCompany(publishingCompany);
            editbooks.setPublishingYear(publishingYear);
            editbooks.setQuantityInStock(quantityInStock);
            editbooks.setPrice(price);
            editbooks.setShortDes(shortDes);
            editbooks.setDescription(description);
            editbooks.setCreatedAt(date);
            em.getTransaction().commit();
        }
        response.sendRedirect("addshop");

    }

    private String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");
        LOGGER.log(Level.INFO, "Part Header = {0}", partHeader);
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(
                        content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;

    }
}
