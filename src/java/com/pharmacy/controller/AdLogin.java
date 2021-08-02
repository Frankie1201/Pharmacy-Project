
package com.pharmacy.controller;

import com.nfs.model.NfsConnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;//session management
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class AdLogin extends HttpServlet {

    String email;
    String password;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()){
            
            
            Connection con = NfsConnection.connect();
            Statement stmt = con.createStatement();
           
         //get request parameters
         email = request.getParameter("email");
         password = request.getParameter("password");
        
         
         //validate user from DB
         //user = Admin, pass = pass123
         ResultSet rs = stmt.executeQuery("select * from staff where email='"+email+"' and password='"+password+"'");
            if(rs.next())
            {
            //create session -> HttpSession
            HttpSession se = request.getSession();//create new session
            
            //set current user in session
            se.setAttribute("staff" , email);
            
            request.getRequestDispatcher("adminhome.jsp").include(request, response);
            
         }
         else
         {
           out.print("Sorry user not recognised");
           out.print("<br/>");
           out.print("Check user name and password");
           
           //RequestDispatcher
           //method 1 = foward()-> forward request to next page
           //methos 2 = Include()-> include content in same page
           
           request.getRequestDispatcher("adminLogin.jsp").include(request, response);
         }
        } catch (SQLException ex) {
            Logger.getLogger(AdLogin.class.getName()).log(Level.SEVERE, null, ex);
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
        processRequest(request, response);
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
