/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import DAO.adminDAO;
import beans.adminBean;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author simonpeter
 */
public class adminLoginServlet extends HttpServlet {

    private adminDAO adminLoginDao;

    @Override
    public void init() {
      adminDAO  adminDAO = new adminDAO();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
               
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String adminName = request.getParameter("adminName");
        String password = request.getParameter("password");
        adminBean adminBean = new adminBean();
        adminBean.setAdminName(adminName);
        adminBean.setPassword(password);

//        try {
//            if (adminDAO.validateAdmin(adminBean)) {
//                //HttpSession session = request.getSession();
//                // session.setAttribute("username",username);
//                response.sendRedirect("loginsuccess.jsp");
//            } else {
//                HttpSession session = request.getSession();
//                //session.setAttribute("user", username);
//                //response.sendRedirect("login.jsp");
//            }
//        } catch (ClassNotFoundException e) {
//        } catch (SQLException ex) {
//            Logger.getLogger(servlets.adminLoginServlet.class.getName()).log(Level.SEVERE, null, ex);
//        }
    }
    
        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/adminPlatform.jsp");
        dispatcher.forward(request, response);
    }
}
