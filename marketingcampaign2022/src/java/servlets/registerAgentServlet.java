/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import DAO.agentDAO;
import java.io.IOException;
import beans.agentBean;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author simonpeter
 */
//@webServlet(\adminPlatform)
public class registerAgentServlet extends HttpServlet {
    
    agentDAO agentDAO = new agentDAO();


//    String name = request.getParameter("name");
//    String region = request.getParameter("region");
//    //make agent object
//    agentRegister userModel = new agentRegister(name, region);
//
//    //create a database model
//    registerAgentdao regUser = new registerAgentdao(dbConnect.getConnection());
//    if (regUser.saveAgent(userModel)) {
//       response.sendRedirect("#");
//    } else {
//        String errorMessage = "Agent Available";
//        HttpSession regSession = request.getSession();
//        regSession.setAttribute("RegError", errorMessage);
//        response.sendRedirect("adminPlatform.jsp");
//        }

    
    
    
    
    
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
        processRequest(request, response);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/adminPlatform.jsp");
        dispatcher.forward(request, response);
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
        
        String agentName = request.getParameter("name");
        String region = request.getParameter("region");
        
        agentBean agentBean = new agentBean();
        agentBean.setAgentName(agentName);
        agentBean.setRegion(region);

        
        agentDAO.registerAgent(agentBean);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/adminPlatform.jsp");
        dispatcher.forward(request, response);
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
