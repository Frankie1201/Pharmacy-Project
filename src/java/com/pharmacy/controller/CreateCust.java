
package com.pharmacy.controller;

import com.nfs.model.CustomerQuery;
import com.nfs.model.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CreateCust extends HttpServlet {

    String fullName;
    String address;
    String phone;
    String email;
    String password;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
           //getting request parameters
            fullName = request.getParameter("fullName");
            address = request.getParameter("address");
            phone = request.getParameter("phone");
            email = request.getParameter("email");
            password = request.getParameter("password");
            
            //create student object
            Customer c = new Customer(fullName,address,phone,email,password);
            
            //insert student into DB
            int r = CustomerQuery.insert(c);
            
            if(r==1)
            {
                out.print("Customer Record Saved"); 
                request.getRequestDispatcher("customerDisplay.jsp").include(request, response);
            }//if ends
            else{
                out.print("Error......Can not save record");
                request.getRequestDispatcher("addCust.jsp").include(request, response);
            }//else ends
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
